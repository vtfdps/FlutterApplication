import 'package:flutter/material.dart';
import 'models/AircraftClass.dart';
import 'widgets/AirborneWidget.dart';
import 'screens/ConnectPage.dart';
import 'router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'vTFDPS',
      home: ConnectScreen(),
      initialRoute: '/',
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}

Future<void> wait() async {
  await Future.delayed(Duration(seconds: 5));
}
