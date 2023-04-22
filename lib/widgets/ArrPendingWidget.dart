import 'package:flutter/material.dart';

import '../globals/TextStyle/WidgetHeaderStyle.dart';
import '../globals/TextStyle/widgetTextStyle.dart';
import '../globals/data.dart';
import '../models/AircraftClass.dart';

class ArrPendingWidget extends StatefulWidget {
  const ArrPendingWidget({super.key});

  @override
  State<ArrPendingWidget> createState() => _ArrPendingWidgetState();
}

class _ArrPendingWidgetState extends State<ArrPendingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "ARR - PENDING",
          style: widgetHeaderStyle,
        ),
        Flexible(
          child: ListView.builder(
            itemCount: Aircrafts.length,
            itemBuilder: (context, index) {
              return PendingAircraftWidget(aircraft: Aircrafts[index]);
            },
          ),
        ),
      ],
    );
  }
}

class PendingAircraftWidget extends StatefulWidget {
  final Aircraft aircraft;

  const PendingAircraftWidget({super.key, required this.aircraft});

  @override
  State<PendingAircraftWidget> createState() => _PendingAircraftWidgetState();
}

class _PendingAircraftWidgetState extends State<PendingAircraftWidget> {
  @override
  Widget build(BuildContext context) {
    final widgetHeight = MediaQuery.of(context).size.height;
    final widgetWidth = MediaQuery.of(context).size.width;

    final column1 = widgetWidth;
    final column2 = widgetWidth;
    final column3 = widgetWidth;
    final column4 = widgetWidth;
    final column5 = widgetWidth;
    final column6 = widgetWidth;
    final column7 = widgetWidth;
    final column8 = widgetWidth;

    final TextStyle pendingWidgetTextStyle = listElementTextStyle.copyWith(
        fontSize: MediaQuery.of(context).size.shortestSide * 0.02);

    return Container(
      child: Row(
        children: [
          Flexible(
            child: SizedBox(
              width: column1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '?',
                      style: pendingWidgetTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: column2,
              child: Center(
                child: Text(
                  widget.aircraft.assignedRunway ?? "",
                  style: pendingWidgetTextStyle,
                ),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: column3,
              child: Text("ILS", style: pendingWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: column4,
              child: Text(widget.aircraft.callsign ?? "",
                  style: pendingWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: column5,
              child: Column(
                children: [
                  Text(
                    widget.aircraft.aircrafttype ?? "",
                    style: pendingWidgetTextStyle,
                  ),
                  Text(
                    widget.aircraft.wtc ?? "",
                    style: pendingWidgetTextStyle,
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: column6,
              child: Text('E1029', style: pendingWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: column7,
              child: Text(
                widget.aircraft.destination ?? "",
                style: pendingWidgetTextStyle,
              ),
            ),
          ),
          Flexible(
              child: SizedBox(
            width: column8,
            child: Column(children: [
              Text(
                widget.aircraft.airportposition ?? "",
                style: pendingWidgetTextStyle,
              )
            ]),
          ))
        ],
      ),
    );
  }
}
