part of 'main_cubit.dart';

class MainState extends Equatable {
  final bool isLoading;
  final bool isAuthenticated;
  final bool isError;
  final bool isSuccess;
  final String email;

  const MainState({
    this.isLoading = false,
    this.isAuthenticated = false,
    this.isError = false,
    this.isSuccess = false,
    this.email = '',
  });

  MainState copyWith({
    bool? isLoading,
    bool? isAuthenticated,
    bool? isError,
    bool? isSuccess,
    String? email,
  }) {
    return MainState(
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      email: email ?? this.email,
    );
  }

  @override
  List<Object> get props => [
        isLoading,
        isError,
        isSuccess,
        isAuthenticated,
        email,
      ];
}
