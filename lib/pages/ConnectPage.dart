import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('vTFDPS - Connect to Euroscope'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: Implement login logic
            //Navigator.pushNamed(context, '/StationSelection');
            Navigator.pushReplacementNamed(context, '/StationSelection');
          },
          child: const Text('Connect'),
        ),
      ),
    );
  }
}