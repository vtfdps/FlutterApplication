import 'package:flutter/material.dart';
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
