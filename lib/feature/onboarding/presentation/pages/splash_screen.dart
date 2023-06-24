import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ic_firebase/core/theme/base_colors.dart';
import 'package:ic_firebase/feature/onboarding/presentation/cubit/app_initialization_cubit.dart';
import 'package:ic_firebase/services/di.dart';

import '../../../../core/bases/widgets/scaffold.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

late final AppInitializationCubit _cubit;

@override
  void initState() {
    _cubit = get<AppInitializationCubit>();
    _cubit.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: BlocListener<AppInitializationCubit, AppInitializationState>(
        listener: (context, state) {
          
        },
        child: Center(
          child: Text(
            'datass',
            style: TextStyle(
              color: BaseColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
