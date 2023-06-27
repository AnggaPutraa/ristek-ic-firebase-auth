import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ic_firebase/feature/authentication/core/data/repositoreis/authentication_repository_impl.dart';
import 'package:injectable/injectable.dart';

part 'app_initialization_state.dart';

@injectable
@singleton
class AppInitializationCubit extends Cubit<AppInitializationState> {
  AppInitializationCubit() : super(const AppInitializationState());
  final AuthenticationRepository _repository = AuthenticationRepository();

  void init() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
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
        ),
      );
    }
  }
}
