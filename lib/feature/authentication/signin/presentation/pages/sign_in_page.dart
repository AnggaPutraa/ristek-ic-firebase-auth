import 'package:flutter/material.dart';
import 'package:ic_firebase/feature/authentication/signin/presentation/cubit/sign_in_cubit.dart';
import 'package:ic_firebase/services/di.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final SignInCubit _cubit;

  @override
  void initState() {
    _cubit = get<SignInCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _cubit.signIn();
          },
          child: const Text('Test'),
        ),
      ),
    );
  }
}
