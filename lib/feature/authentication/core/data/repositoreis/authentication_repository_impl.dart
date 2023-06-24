
import 'package:ic_firebase/feature/authentication/signup/domain/use_case/sign_up_params.dart';

import 'package:ic_firebase/feature/authentication/signin/domain/use_case/sign_in_params.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  @override
  Future<void> signIn(SignInParams signInParams) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(SignUpParams signUpParams) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
  
}