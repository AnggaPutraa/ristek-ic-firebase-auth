import 'package:firebase_auth/firebase_auth.dart';
import 'package:ic_firebase/feature/authentication/signup/domain/use_case/sign_up_params.dart';

import 'package:ic_firebase/feature/authentication/signin/domain/use_case/sign_in_params.dart';
import '../data_source/authentication_data_source.dart';

class AuthenticationRepository {
  final AuthenticationRemoteDataSource _remoteDataSource =
      AuthenticationRemoteDataSource();

  Future<User?> currentUser() {
    return _remoteDataSource.currentUser();
  }

  Future<UserCredential>? signIn(SignInParams signInParams) {
    return _remoteDataSource.signIn(signInParams);
  }

  Future<void>? signUp(SignUpParams signUpParams) {
    return _remoteDataSource.signUp(signUpParams);
  }

  Future<void>? signOut() {
    return _remoteDataSource.signOut();
  }
}
