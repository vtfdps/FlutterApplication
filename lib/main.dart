import 'package:flutter/material.dart';
import 'package:vtfdps/services/websocket.dart';
import 'screens/ConnectPage.dart';
import 'router.dart';

void main() {
  runApp(MainApp());
  MyWebSocket webSocket = MyWebSocket();

  webSocket.sendMessage('test');
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
