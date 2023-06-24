import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ic_firebase/core/bases/enums/text_field.dart';
import 'package:ic_firebase/core/bases/widgets/button.dart';
import 'package:ic_firebase/core/bases/widgets/scaffold.dart';
import 'package:ic_firebase/core/bases/widgets/text_field.dart';
import 'package:ic_firebase/core/theme/base_colors.dart';
import 'package:ic_firebase/feature/authentication/signup/presentation/cubit/sign_up_cubit.dart';
import 'package:ic_firebase/services/di.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final SignUpCubit _cubit;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _cubit = get<SignUpCubit>();
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                InputField(
                  title: 'Email',
                  hint: 'Insert Youre Email',
                  controller: _email,
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(
                  title: 'Passoword',
                  hint: 'Insert Youre Password',
                  controller: _password,
                  type: TextFieldType.password,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Button(
                      text: 'Sign Up',
                      onTap: () {
                        _cubit.signUp(
                          email: _email.value.text,
                          password: _password.value.text,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Already Have an Account? ',
                      style: TextStyle(
                        color: BaseColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: BaseColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
