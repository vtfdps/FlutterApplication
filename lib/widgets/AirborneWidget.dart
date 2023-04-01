import 'package:flutter/material.dart';
import '../models/AircraftClass.dart';

class AirborneWidget extends StatefulWidget {
  const AirborneWidget({Key? key}) : super(key: key);

  @override
  _AirborneWidgetState createState() => _AirborneWidgetState();

  static GlobalKey<_AirborneWidgetState> airborneWidgetKey =
      GlobalKey<_AirborneWidgetState>();
}

class _AirborneWidgetState extends State<AirborneWidget> {
  List<Aircraft> _aircrafts = [
    Aircraft(callsign: 'DLH123', aircrafttype: 'A320'),
    Aircraft(callsign: 'DLH124', aircrafttype: 'B748'),
    Aircraft(callsign: 'DLH125', aircrafttype: 'YOURMOM'),
  ];

  void _updateAircrafts(List<Aircraft> newAircrafts) {
    setState(() {
      _aircrafts = newAircrafts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _aircrafts.length,
      itemBuilder: (context, index) {
        return AircraftWidget(aircraft: _aircrafts[index]);
      },
    );
  }
}

class AircraftWidget extends StatefulWidget {
  final Aircraft aircraft;

  const AircraftWidget({required this.aircraft, Key? key}) : super(key: key);

  @override
  _AircraftWidgetState createState() => _AircraftWidgetState();
}

class _AircraftWidgetState extends State<AircraftWidget> {
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

class AircraftAirborneWidget extends StatefulWidget {
  const AircraftAirborneWidget({super.key});

  @override
  State<AircraftAirborneWidget> createState() => _AircraftAirborneWidget;
  State();
}

class _AircraftAirborneWidgetState extends State<AircraftAirborneWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
