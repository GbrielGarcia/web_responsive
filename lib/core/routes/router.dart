import 'package:go_router/go_router.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';

import '../../screens/views/privacy_policy/privacy_policy.dart';

final goRouter = GoRouter(
  initialLocation: '/dashboard',
  errorBuilder: (context, state) => const HomeScreen(),
  // redirect: (context, state) => '/dashboard',
  routes: [
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/politicas',
      builder: (context, state) => const PrivacyPolicy(),
    ),
  ],
);
