// Mocks generated by Mockito 5.4.2 from annotations
// in ankigpt/test/providers/stripe_checkout_provider_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:ankigpt/src/infrastructure/buy_repository.dart' as _i3;
import 'package:clock/clock.dart' as _i6;
import 'package:cloud_functions/cloud_functions.dart' as _i2;
import 'package:logger/src/logger.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseFunctions_0 extends _i1.SmartFake
    implements _i2.FirebaseFunctions {
  _FakeFirebaseFunctions_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDateTime_1 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStopwatch_2 extends _i1.SmartFake implements Stopwatch {
  _FakeStopwatch_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [BuyRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockBuyRepository extends _i1.Mock implements _i3.BuyRepository {
  @override
  _i2.FirebaseFunctions get cloudFunctions => (super.noSuchMethod(
        Invocation.getter(#cloudFunctions),
        returnValue: _FakeFirebaseFunctions_0(
          this,
          Invocation.getter(#cloudFunctions),
        ),
        returnValueForMissingStub: _FakeFirebaseFunctions_0(
          this,
          Invocation.getter(#cloudFunctions),
        ),
      ) as _i2.FirebaseFunctions);
  @override
  String get routeUrl => (super.noSuchMethod(
        Invocation.getter(#routeUrl),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i4.Future<String> createCheckoutSessionUrl() => (super.noSuchMethod(
        Invocation.method(
          #createCheckoutSessionUrl,
          [],
        ),
        returnValue: _i4.Future<String>.value(''),
        returnValueForMissingStub: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i5.Logger {
  @override
  void v(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #v,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void d(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #d,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void i(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #i,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void w(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #w,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void e(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #e,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void wtf(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #wtf,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void log(
    _i5.Level? level,
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #log,
          [
            level,
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool isClosed() => (super.noSuchMethod(
        Invocation.method(
          #isClosed,
          [],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Clock].
///
/// See the documentation for Mockito's code generation for more information.
class MockClock extends _i1.Mock implements _i6.Clock {
  @override
  DateTime now() => (super.noSuchMethod(
        Invocation.method(
          #now,
          [],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #now,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #now,
            [],
          ),
        ),
      ) as DateTime);
  @override
  DateTime agoBy(Duration? duration) => (super.noSuchMethod(
        Invocation.method(
          #agoBy,
          [duration],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #agoBy,
            [duration],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #agoBy,
            [duration],
          ),
        ),
      ) as DateTime);
  @override
  DateTime fromNowBy(Duration? duration) => (super.noSuchMethod(
        Invocation.method(
          #fromNowBy,
          [duration],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #fromNowBy,
            [duration],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #fromNowBy,
            [duration],
          ),
        ),
      ) as DateTime);
  @override
  DateTime ago({
    int? days = 0,
    int? hours = 0,
    int? minutes = 0,
    int? seconds = 0,
    int? milliseconds = 0,
    int? microseconds = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #ago,
          [],
          {
            #days: days,
            #hours: hours,
            #minutes: minutes,
            #seconds: seconds,
            #milliseconds: milliseconds,
            #microseconds: microseconds,
          },
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #ago,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #ago,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
      ) as DateTime);
  @override
  DateTime fromNow({
    int? days = 0,
    int? hours = 0,
    int? minutes = 0,
    int? seconds = 0,
    int? milliseconds = 0,
    int? microseconds = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fromNow,
          [],
          {
            #days: days,
            #hours: hours,
            #minutes: minutes,
            #seconds: seconds,
            #milliseconds: milliseconds,
            #microseconds: microseconds,
          },
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #fromNow,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #fromNow,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
      ) as DateTime);
  @override
  DateTime microsAgo(int? microseconds) => (super.noSuchMethod(
        Invocation.method(
          #microsAgo,
          [microseconds],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #microsAgo,
            [microseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #microsAgo,
            [microseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime microsFromNow(int? microseconds) => (super.noSuchMethod(
        Invocation.method(
          #microsFromNow,
          [microseconds],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #microsFromNow,
            [microseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #microsFromNow,
            [microseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime millisAgo(int? milliseconds) => (super.noSuchMethod(
        Invocation.method(
          #millisAgo,
          [milliseconds],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #millisAgo,
            [milliseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #millisAgo,
            [milliseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime millisFromNow(int? milliseconds) => (super.noSuchMethod(
        Invocation.method(
          #millisFromNow,
          [milliseconds],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #millisFromNow,
            [milliseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #millisFromNow,
            [milliseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime secondsAgo(int? seconds) => (super.noSuchMethod(
        Invocation.method(
          #secondsAgo,
          [seconds],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #secondsAgo,
            [seconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #secondsAgo,
            [seconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime secondsFromNow(int? seconds) => (super.noSuchMethod(
        Invocation.method(
          #secondsFromNow,
          [seconds],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #secondsFromNow,
            [seconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #secondsFromNow,
            [seconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime minutesAgo(int? minutes) => (super.noSuchMethod(
        Invocation.method(
          #minutesAgo,
          [minutes],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #minutesAgo,
            [minutes],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #minutesAgo,
            [minutes],
          ),
        ),
      ) as DateTime);
  @override
  DateTime minutesFromNow(int? minutes) => (super.noSuchMethod(
        Invocation.method(
          #minutesFromNow,
          [minutes],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #minutesFromNow,
            [minutes],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #minutesFromNow,
            [minutes],
          ),
        ),
      ) as DateTime);
  @override
  DateTime hoursAgo(int? hours) => (super.noSuchMethod(
        Invocation.method(
          #hoursAgo,
          [hours],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #hoursAgo,
            [hours],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #hoursAgo,
            [hours],
          ),
        ),
      ) as DateTime);
  @override
  DateTime hoursFromNow(int? hours) => (super.noSuchMethod(
        Invocation.method(
          #hoursFromNow,
          [hours],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #hoursFromNow,
            [hours],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #hoursFromNow,
            [hours],
          ),
        ),
      ) as DateTime);
  @override
  DateTime daysAgo(int? days) => (super.noSuchMethod(
        Invocation.method(
          #daysAgo,
          [days],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #daysAgo,
            [days],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #daysAgo,
            [days],
          ),
        ),
      ) as DateTime);
  @override
  DateTime daysFromNow(int? days) => (super.noSuchMethod(
        Invocation.method(
          #daysFromNow,
          [days],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #daysFromNow,
            [days],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #daysFromNow,
            [days],
          ),
        ),
      ) as DateTime);
  @override
  DateTime weeksAgo(int? weeks) => (super.noSuchMethod(
        Invocation.method(
          #weeksAgo,
          [weeks],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #weeksAgo,
            [weeks],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #weeksAgo,
            [weeks],
          ),
        ),
      ) as DateTime);
  @override
  DateTime weeksFromNow(int? weeks) => (super.noSuchMethod(
        Invocation.method(
          #weeksFromNow,
          [weeks],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #weeksFromNow,
            [weeks],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #weeksFromNow,
            [weeks],
          ),
        ),
      ) as DateTime);
  @override
  DateTime monthsAgo(int? months) => (super.noSuchMethod(
        Invocation.method(
          #monthsAgo,
          [months],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #monthsAgo,
            [months],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #monthsAgo,
            [months],
          ),
        ),
      ) as DateTime);
  @override
  DateTime monthsFromNow(int? months) => (super.noSuchMethod(
        Invocation.method(
          #monthsFromNow,
          [months],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #monthsFromNow,
            [months],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #monthsFromNow,
            [months],
          ),
        ),
      ) as DateTime);
  @override
  DateTime yearsAgo(int? years) => (super.noSuchMethod(
        Invocation.method(
          #yearsAgo,
          [years],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #yearsAgo,
            [years],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #yearsAgo,
            [years],
          ),
        ),
      ) as DateTime);
  @override
  DateTime yearsFromNow(int? years) => (super.noSuchMethod(
        Invocation.method(
          #yearsFromNow,
          [years],
        ),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.method(
            #yearsFromNow,
            [years],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.method(
            #yearsFromNow,
            [years],
          ),
        ),
      ) as DateTime);
  @override
  Stopwatch stopwatch() => (super.noSuchMethod(
        Invocation.method(
          #stopwatch,
          [],
        ),
        returnValue: _FakeStopwatch_2(
          this,
          Invocation.method(
            #stopwatch,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeStopwatch_2(
          this,
          Invocation.method(
            #stopwatch,
            [],
          ),
        ),
      ) as Stopwatch);
  @override
  Stopwatch getStopwatch() => (super.noSuchMethod(
        Invocation.method(
          #getStopwatch,
          [],
        ),
        returnValue: _FakeStopwatch_2(
          this,
          Invocation.method(
            #getStopwatch,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeStopwatch_2(
          this,
          Invocation.method(
            #getStopwatch,
            [],
          ),
        ),
      ) as Stopwatch);
}
