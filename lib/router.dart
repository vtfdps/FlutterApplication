import 'package:flutter/material.dart';
import 'screens/ConnectPage.dart';
import 'screens/StationSelectionScreen.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const ConnectScreen());
      case '/StationSelection':
        return MaterialPageRoute(
            builder: (_) => const StationSelectionScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
