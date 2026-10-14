import 'package:flutter/material.dart';

import '../../features/auth/login/login_screen.dart';
import '../../features/auth/register/register_screen.dart';

class RoutesManager {
  // Route names
  static const String login = '/login';
  static const String register = '/register';
  static const String homeScreen = '/homeScreen';

  // Generate routes
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );

      case register:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: const Center(child: Text('The requested page was not found.')),
    );
  }
}
