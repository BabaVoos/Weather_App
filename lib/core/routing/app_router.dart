import 'package:flutter/material.dart';
import 'routes.dart';
import '../../features/home/ui/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
