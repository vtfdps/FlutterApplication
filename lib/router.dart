import 'package:flutter/material.dart';
import 'pages/ConnectPage.dart';
import 'pages/StationSelectionPage.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ConnectPage());
      case '/StationSelection':
        return MaterialPageRoute(builder: (_) => StationSelectionPage());
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