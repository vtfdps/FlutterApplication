import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/AircraftClass.dart';

class ActiveWidget extends StatefulWidget {
  const ActiveWidget({super.key});

  @override
  State<ActiveWidget> createState() => _ActiveWidgetState();
}

class _ActiveWidgetState extends State<ActiveWidget> {
  // Test items
  List<Aircraft> _aircrafts = [
    Aircraft(callsign: 'DLH123', aircrafttype: 'A320'),
    Aircraft(callsign: 'DLH124', aircrafttype: 'B748'),
    Aircraft(callsign: 'DLH125', aircrafttype: 'Test'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _aircrafts.length,
      itemBuilder: (context, index) {
        return ActiveAircraftWidget(aircraft: _aircrafts[index]);
      },
    );
  }
}

class ActiveAircraftWidget extends StatefulWidget {
  const ActiveAircraftWidget({super.key, required this.aircraft});
  final Aircraft aircraft;

  @override
  State<ActiveAircraftWidget> createState() => _ActiveAircraftWidgetState();
}

class _ActiveAircraftWidgetState extends State<ActiveAircraftWidget> {
  final _textStyle = TextStyle(fontSize: 22);
  @override
  Widget build(BuildContext context) {
    final widgetHeight = MediaQuery.of(context).size.height;
    final widgetWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        children: [
          SizedBox(
            width: widgetWidth * 0.01,
            child: Text(
              '?',
              style: _textStyle,
            ),
          ),
          SizedBox(
            width: 50,
            height: 100,
            child: Text(
              widget.aircraft.assignedRunway,
              style: _textStyle,
            ),
          ),
          SizedBox(
            child: Text(widget.aircraft.currentTaxiway, style: _textStyle),
          ),
          SizedBox(
            child: Text(widget.aircraft.callsign, style: _textStyle),
          ),
          SizedBox(
            child: Column(
              children: [
                Text(
                  widget.aircraft.aircrafttype,
                  style: _textStyle,
                ),
                Text(
                  widget.aircraft.wtc,
                  style: _textStyle,
                )
              ],
            ),
          ),
          SizedBox(
            child: Text('E1029', style: _textStyle),
          ),
          SizedBox(
            child: Column(
              children: [
                Text(
                  widget.aircraft.sid,
                  style: _textStyle,
                ),
                Text(
                  widget.aircraft.destination,
                  style: _textStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
