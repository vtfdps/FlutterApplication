import 'package:flutter/material.dart';

class StationSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Station'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Handle DEL+GND button press
              },
              child: Text('DEL + GND'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle GND button press
              },
              child: Text('GND'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle TWR button press
              },
              child: Text('TWR'),
            ),
          ],
        ),
      ),
    );
  }
}