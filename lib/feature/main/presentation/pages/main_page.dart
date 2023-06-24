import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ic_firebase/core/bases/widgets/button.dart';
import 'package:ic_firebase/core/bases/widgets/scaffold.dart';
import 'package:ic_firebase/core/theme/base_colors.dart';
import 'package:ic_firebase/feature/main/presentation/cubit/main_cubit.dart';
import 'package:ic_firebase/services/di.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final MainCubit _cubit;

  @override
  void initState() {
    _cubit = get<MainCubit>();
    _cubit.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: BlocBuilder<MainCubit, MainState>(
        bloc: _cubit,
        builder: (context, state) => Center(
          child: state.isAuthenticated
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Currently Logged In as',
                      style: TextStyle(
                          color: BaseColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      state.email,
                      style: const TextStyle(
                          color: BaseColors.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Button(
                          text: 'Sign Out',
                          onTap: () {
                            _cubit.signOut();
                          },
                        ),
                      ],
                    )
                  ],
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
