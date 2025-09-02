import 'package:dalel/features/onborading/presentaion/view/onboarding.dart';
import 'package:dalel/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart' show GoRouter, GoRoute;

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const Onboarding(),
    ),
  ],
);
