import 'package:ankigpt/src/models/user_id.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth firebaseAuth;

  UserRepository({required this.firebaseAuth});

  bool isSignedIn() {
    return firebaseAuth.currentUser != null;
  }

  Future<UserId> signIn() async {
    final credentials = await firebaseAuth.signInAnonymously();
    return credentials.user!.uid;
  }

  UserId? getUserId() {
    return firebaseAuth.currentUser?.uid;
  }
}
