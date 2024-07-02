import 'package:dalel/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:dalel/features/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
  
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/on_boarding_view',
      builder: (context, state) => const OnBoardingView(),
    ),
  ],
);
