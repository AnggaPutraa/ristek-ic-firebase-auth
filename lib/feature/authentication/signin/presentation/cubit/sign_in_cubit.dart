import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ic_firebase/feature/authentication/core/data/repositoreis/authentication_repository_impl.dart';
import 'package:ic_firebase/feature/authentication/signin/domain/use_case/sign_in_params.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final AuthenticationRepository _repository = AuthenticationRepository();
  SignInCubit() : super(const SignInState());

  void signIn({
    required String email,
    required String password,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final params = SignInParams(
      email: email,
      password: password,
    );
    try {
      await _repository.signIn(params);
      emit(
        state.copyWith(
          isError: true,
          isLoading: false,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isSuccess: true,
          isLoading: false,
        ),
      );
    }
  }
}
