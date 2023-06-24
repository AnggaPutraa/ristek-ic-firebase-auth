import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ic_firebase/feature/onboarding/presentation/cubit/app_initialization_cubit.dart';
import 'package:ic_firebase/services/di.dart';

import 'services/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppInitializationCubit>(
          create: (_) => get<AppInitializationCubit>()..init(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
