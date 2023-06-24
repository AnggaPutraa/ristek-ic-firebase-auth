import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ic_firebase/feature/authentication/core/data/repositoreis/authentication_repository_impl.dart';
import 'package:ic_firebase/feature/authentication/signup/domain/use_case/sign_up_params.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final AuthenticationRepository _repository = AuthenticationRepository();
  SignUpCubit() : super(const SignUpState());

  void signUp({
    required String email,
    required String password,
  }) async {
    state.copyWith(
      isLoading: true,
    );
    try {
      SignUpParams params = SignUpParams(
        email: email,
        password: password,
      );
      await _repository.signUp(params);
      state.copyWith(
        isLoading: false,
        isSuccess: true,
      );
    } catch (_) {
      print('object');
      state.copyWith(
        isLoading: false,
        isError: true,
      );
    }
  }
}
