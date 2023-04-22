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
  void updateAircraftList(List<Aircraft> newAircraftList) {
    setState(() {
      Aircrafts = newAircraftList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "AIRBORNE",
          style: widgetHeaderStyle,
        ),
        Flexible(
          child: ListView.builder(
            itemCount: Aircrafts.length,
            itemBuilder: (context, index) {
              return AircraftWidget(aircraft: Aircrafts[index]);
            },
          ),
        ),
      ],
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
