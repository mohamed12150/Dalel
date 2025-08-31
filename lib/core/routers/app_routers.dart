import 'package:dalel/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart' show GoRouter, GoRoute;

final GoRouter router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const SplashView())],
);
