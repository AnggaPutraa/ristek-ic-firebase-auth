// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/authentication/signin/presentation/cubit/sign_in_cubit.dart'
    as _i5;
import '../feature/authentication/signup/presentation/cubit/sign_up_cubit.dart'
    as _i6;
import '../feature/main/presentation/cubit/main_cubit.dart' as _i4;
import '../feature/onboarding/presentation/cubit/app_initialization_cubit.dart'
    as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppInitializationCubit>(() => _i3.AppInitializationCubit());
    gh.factory<_i4.MainCubit>(() => _i4.MainCubit());
    gh.factory<_i5.SignInCubit>(() => _i5.SignInCubit());
    gh.factory<_i6.SignUpCubit>(() => _i6.SignUpCubit());
    return this;
  }
}
