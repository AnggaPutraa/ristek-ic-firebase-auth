import 'package:flutter/material.dart';
import 'package:ic_firebase/core/theme/base_colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  const CustomScaffold({
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 28,
          ),
          child: body,
        ),
      ),
      backgroundColor: BaseColors.black,
      resizeToAvoidBottomInset: true,
    );
  }
}
