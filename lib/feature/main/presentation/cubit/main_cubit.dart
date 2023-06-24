import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../authentication/core/data/repositoreis/authentication_repository_impl.dart';

part 'main_state.dart';

@injectable
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());
  final AuthenticationRepository _repository = AuthenticationRepository();
  void init() async {
    state.copyWith(
      isLoading: true,
    );
    await Future.delayed(const Duration(seconds: 3), () {});
    final User? user = await _repository.currentUser();
    if (user == null) {
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          isAuthenticated: true,
          email: user.email,
        ),
      );
    }
  }

  void signOut() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    try {
      await _repository.signOut();
      emit(
        state.copyWith(
          isAuthenticated: false,
          isSuccess: true,
          isLoading: false,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isAuthenticated: false,
          isError: true,
          isLoading: false,
        ),
      );
    }
  }
}
