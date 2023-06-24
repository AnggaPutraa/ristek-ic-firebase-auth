import 'package:go_router/go_router.dart';

import '../feature/authentication/signin/presentation/pages/sign_in_page.dart';
import '../feature/authentication/signup/presentation/pages/sign_up_page.dart';
import '../feature/onboarding/presentation/pages/onboarding_page.dart';
import '../feature/onboarding/presentation/pages/splash_screen.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnBoardingPage(),
    ),
    GoRoute(
      path: '/auth/signup',
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/auth/signin',
      builder: (context, state) => const SignInPage(),
    ),
  ],
);
