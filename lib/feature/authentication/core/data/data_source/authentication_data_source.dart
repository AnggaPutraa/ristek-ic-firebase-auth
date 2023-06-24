import 'package:firebase_auth/firebase_auth.dart';
import 'package:ic_firebase/feature/authentication/signin/domain/use_case/sign_in_params.dart';
import 'package:ic_firebase/feature/authentication/signup/domain/use_case/sign_up_params.dart';

abstract class AuthenticationRemoteDataSource {
  Future<UserCredential> signIn(
    SignInParams signInParams,
  );
  Future<void> signUp(
    SignUpParams signUpParams,
  );
  Future<void> signOut();
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  @override
  Future<UserCredential> signIn(SignInParams signInParams) {
    final email = signInParams.email;
    final password = signInParams.password;

    return FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signUp(SignUpParams signUpParams) {
    final email = signUpParams.email;
    final password = signUpParams.password;

    return FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
