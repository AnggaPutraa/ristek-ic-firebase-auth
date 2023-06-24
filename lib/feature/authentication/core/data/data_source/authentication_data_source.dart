import 'package:firebase_auth/firebase_auth.dart';
import 'package:ic_firebase/feature/authentication/signin/domain/use_case/sign_in_params.dart';
import 'package:ic_firebase/feature/authentication/signup/domain/use_case/sign_up_params.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationRemoteDataSource {
  Future<UserCredential>? signIn(
    SignInParams signInParams,
  );
  Future<void>? signUp(
    SignUpParams signUpParams,
  );
  Future<void>? signOut();
}

@Injectable(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  @override
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

  @override
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

  @override
  Future<void>? signOut() {
    try {
      return FirebaseAuth.instance.signOut();
    } catch (_) {
      return null;
    }
  }
}
