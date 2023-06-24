import '../../../signin/domain/use_case/sign_in_params.dart';
import '../../../signup/domain/use_case/sign_up_params.dart';

abstract class AuthenticationRepository {
    Future<void> signIn(
    SignInParams signInParams,
  );
  Future<void> signUp(
    SignUpParams signUpParams,
  );
  Future<void> signOut();
}