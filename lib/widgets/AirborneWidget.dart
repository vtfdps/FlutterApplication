import 'package:flutter/material.dart';
import 'package:vtfdps/screens/GroundDeliveryScreen.dart';

class AirborneWidget extends StatefulWidget {
  const AirborneWidget({Key? key}) : super(key: key);

  @override
  _AirborneWidgetState createState() => _AirborneWidgetState();
}

class _AirborneWidgetState extends State<AirborneWidget> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.black,
      child: Expanded(
        child: Text(
          'DEP - RDY',
          style: TextStyle(fontSize: 75, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
