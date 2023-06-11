import 'dart:async';

import 'package:ankigpt/main.dart';
import 'package:ankigpt/src/infrastructure/session_repository.dart';
import 'package:ankigpt/src/infrastructure/user_repository.dart';
import 'package:ankigpt/src/models/anki_card.dart';
import 'package:ankigpt/src/models/generate_state.dart';
import 'package:ankigpt/src/models/input_type.dart';
import 'package:ankigpt/src/models/language.dart';
import 'package:ankigpt/src/models/session_dto.dart';
import 'package:ankigpt/src/models/session_id.dart';
import 'package:ankigpt/src/models/user_id.dart';
import 'package:ankigpt/src/providers/has_plus_provider.dart';
import 'package:ankigpt/src/providers/logger/logger_provider.dart';
import 'package:ankigpt/src/providers/session_repository_provider.dart';
import 'package:ankigpt/src/providers/slide_text_field_controller_provider.dart';
import 'package:ankigpt/src/providers/user_repository_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_provider.g.dart';

@riverpod
class GenerateNotifier extends _$GenerateNotifier {
  Logger get _logger => ref.read(loggerProvider);
  TextEditingController get _textEditingController =>
      ref.read(slideTextFieldControllerProvider);
  UserRepository get _userRepository => ref.read(userRepositoryProvider);
  SessionRepository get _sessionRepository =>
      ref.read(sessionRepositoryProvider);
  bool get _hasPlus => ref.read(hasPlusProvider);
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  StreamSubscription<DocumentSnapshot<SessionDto>>? _subscription;
  PlatformFile? _pickedFile;
  bool get _hasPickedFile => _pickedFile != null;

  @override
  GenerateState build() {
    ref.onDispose(() => _stopSubscription());
    return const GenerateState.initial();
  }

  Future<void> submit({
    required CardGenrationSize size,
  }) async {
    _logger.d("Generating cards...");

    // state = GenerateState.success(
    //   sessionId: '123',
    //   generatedCards: localCards,
    //   downloadUrl: '',
    // );

    // return;

    if (!_hasPlus && size.isPlus()) {
      throw PlusMembershipRequiredException();
    }

    if (_textEditingController.text.length < 200) {
      throw TooShortInputException();
    }

    if (_textEditingController.text.length > 10000) {
      throw TooLongInputException();
    }

    state = const GenerateState.loading();

    UserId? userId = _userRepository.getUserId();
    if (!_userRepository.isSignedIn()) {
      _logger.d("User is not signed in, signing in...");
      userId == await _userRepository.signIn();
    }

    SessionId? sessionId;
    if (_hasPickedFile) {
      sessionId = const Uuid().v4();
      await _uploadFile(sessionId: sessionId, userId: userId!);
    }

    sessionId = await _sessionRepository.startSession(
      slideContent: _textEditingController.text,
      numberOfCards: size.toInt(),
      sessionId: sessionId,
      type: _hasPickedFile ? InputType.file : InputType.text,
    );

    _subscription = _firestore
        .collection('Sessions')
        .doc(sessionId)
        .withConverter(
          fromFirestore: (doc, options) =>
              SessionDto.fromJsonWithInjectedId(sessionId!, doc.data()!),
          toFirestore: (_, __) => throw UnimplementedError(),
        )
        .snapshots()
        .listen((event) {
      final dto = event.data();
      if (dto == null) {
        return;
      }

      _logger.d("Received session dto with ${dto.cards?.length} cards");

      final hasError = dto.error != null;
      if (hasError) {
        _stopSubscription();
        state = GenerateState.error(
          message: dto.error!,
          sessionId: sessionId!,
          language: dto.language,
        );
        return;
      }

      final cards = dto.cards?.values.toList() ?? [];
      final isCompleted = dto.isCompleted;
      if (isCompleted) {
        _stopSubscription();
        state = GenerateState.success(
          sessionId: sessionId!,
          generatedCards: cards,
          downloadUrl: dto.csv!.downloadUrl,
          language: dto.language,
        );
        return;
      }

      state = GenerateState.loading(
        sessionId: sessionId,
        alreadyGeneratedCards: cards,
        language: dto.language,
      );
    });
  }

  Future<void> _uploadFile({
    required SessionId sessionId,
    required UserId userId,
  }) async {
    _logger.d('Starting to upload file');
    await _sessionRepository.uploadFile(
      sessionId: sessionId,
      userId: userId,
      file: _pickedFile!,
    );
    _logger.d('Uploaded file');
  }

  void _stopSubscription() {
    _logger.d("Stopping subscription for generating cards...");
    _subscription?.cancel();
  }

  void setSuccess({
    required String sessionId,
    required List<AnkiCard> generatedCards,
    required String downloadUrl,
    required Language language,
  }) =>
      state = GenerateState.success(
        sessionId: sessionId,
        generatedCards: generatedCards,
        downloadUrl: downloadUrl,
        language: language,
      );

  void reset() {
    state = const GenerateState.initial();
  }

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['pdf'],
      allowMultiple: false,
      type: FileType.custom,
    );

    if (result == null || result.files.isEmpty) return;
    _pickedFile = result.files.first;
    ref.read(pickedFileProvider.notifier).set(_pickedFile);
  }

  void clearPickedFile() {
    _pickedFile = null;
    ref.read(pickedFileProvider.notifier).set(_pickedFile);
  }
}

class TooShortInputException implements Exception {}

class TooLongInputException implements Exception {}

class PlusMembershipRequiredException implements Exception {}

@riverpod
class PickedFile extends _$PickedFile {
  @override
  PlatformFile? build() {
    return null;
  }

  void set(PlatformFile? value) {
    state = value;
  }
}
