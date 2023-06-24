import 'package:firebase_auth/firebase_auth.dart';
import 'package:ic_firebase/feature/authentication/signin/domain/use_case/sign_in_params.dart';
import 'package:ic_firebase/feature/authentication/signup/domain/use_case/sign_up_params.dart';

class AuthenticationRemoteDataSource {

  Future<User?> currentUser() async {
    try {
      return FirebaseAuth.instance.currentUser;
    } catch (_) {
      return null;
    }
  }

  Future<UserCredential>? signIn(SignInParams signInParams) {
    final email = signInParams.email;
    final password = signInParams.password;

    try {
      return FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {
      return null;
    }
  }

  Future<void>? signUp(SignUpParams signUpParams) {
    final email = signUpParams.email;
    final password = signUpParams.password;

    try {
      return FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {
      return null;
    }
  }

  Future<void>? signOut() {
    try {
      return FirebaseAuth.instance.signOut();
    } catch (_) {
      return null;
    }
  }
}
