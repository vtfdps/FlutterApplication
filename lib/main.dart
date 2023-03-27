import 'package:flutter/material.dart';
import 'pages/ConnectPage.dart';
import 'router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: 'vTFDPS',
      home: ConnectPage(),
      initialRoute: '/',
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}