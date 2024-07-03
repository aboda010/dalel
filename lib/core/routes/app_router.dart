import 'package:dalel/features/auth/presentation/view/login_view.dart';
import 'package:dalel/features/auth/presentation/view/sign_up_view.dart';
import 'package:dalel/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:dalel/features/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';

const String signupView = '/sign_up_view';
const String onBoardingView = '/on_boarding';
const String loginView = '/login_view';
final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: onBoardingView,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: signupView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: loginView,
      builder: (context, state) => const LoginView(),
    ),
  ],
);
