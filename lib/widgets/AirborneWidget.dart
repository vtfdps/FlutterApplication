import 'package:flutter/material.dart';
import '../models/AircraftClass.dart';

class AirborneWidget extends StatefulWidget {
  const AirborneWidget({Key? key}) : super(key: key);

  @override
  AirborneWidgetState createState() => AirborneWidgetState();

  static GlobalKey<AirborneWidgetState> airborneWidgetKey =
      GlobalKey<AirborneWidgetState>();
}

class AirborneWidgetState extends State<AirborneWidget> {
  // test elements:
  List<Aircraft> _aircrafts = [
    Aircraft(callsign: 'DLH123', aircrafttype: 'A320'),
    Aircraft(callsign: 'DLH124', aircrafttype: 'B748'),
    Aircraft(callsign: 'DLH125', aircrafttype: 'Test'),
  ];

  void updateAircraftList(List<Aircraft> newAircrafts) {
    setState(() {
      _aircrafts = newAircrafts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _aircrafts.length,
      itemBuilder: (context, index) {
        return AirborneAircraftWidget(aircraft: _aircrafts[index]);
      },
    );
  }
}

class AirborneAircraftWidget extends StatefulWidget {
  final Aircraft aircraft;

  const AirborneAircraftWidget({required this.aircraft, Key? key})
      : super(key: key);

  @override
  _AirborneAircraftWidgetState createState() => _AirborneAircraftWidgetState();
}

class _AirborneAircraftWidgetState extends State<AirborneAircraftWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.aircraft.callsign,
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
