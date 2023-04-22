import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../globals/TextStyle/WidgetHeaderStyle.dart';
import '../globals/TextStyle/widgetTextStyle.dart';
import '../globals/data.dart';
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
    final widgetHeight = MediaQuery.of(context).size.height;
    final widgetWidth = MediaQuery.of(context).size.width;

    final widthColumn1 = 1.1 / 21.1 * widgetWidth;
    final widthColumn2 = 2.1 / 21.1 * widgetWidth;
    final widthColumn3 = 1.5 / 21.1 * widgetWidth;
    final widthColumn4 = 3.8 / 21.1 * widgetWidth;
    final widthColumn5 = 3 / 21.1 * widgetWidth;
    final widthColumn6 = 3 / 21.1 * widgetWidth;
    final widthColumn7 = 4.5 / 21.1 * widgetWidth;
    final widthColumn8 = 2.1 / 21.1 * widgetWidth;

    final TextStyle activeWidgetTextStyle = listElementTextStyle.copyWith(
        fontSize: MediaQuery.of(context).size.shortestSide * 0.02);

    final Color aircrafttypeColor;
    final Color wtcColor;
    final Color wtcTextColor;
    if (widget.aircraft.wtc != 'H') {
      aircrafttypeColor = Colors.black;
      wtcColor = Colors.black;
      wtcTextColor = activeWidgetTextStyle.color ?? Colors.white;
    } else {
      // color picked rgb from picture
      aircrafttypeColor = const Color.fromRGBO(215, 215, 102, 1.0);
      // color picked rgb from picture
      wtcColor = const Color.fromRGBO(230, 230, 250, 1.0);
      wtcTextColor = Colors.black;
    }

    return Container(
      child: Row(
        children: [
          Flexible(
            child: SizedBox(
              width: widthColumn1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '?',
                      style: activeWidgetTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: widthColumn4,
              child: Text(widget.aircraft.callsign ?? "",
                  style: activeWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: widthColumn5,
              child: Column(
                children: [
                  Container(
                    color: aircrafttypeColor,
                    child: Text(
                      widget.aircraft.aircrafttype ?? "",
                      style: activeWidgetTextStyle,
                    ),
                  ),
                  Container(
                    color: wtcColor,
                    child: Text(
                      widget.aircraft.wtc ?? "",
                      style:
                          activeWidgetTextStyle.copyWith(color: wtcTextColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: widthColumn7,
              child: Column(
                children: [
                  Text(
                    widget.aircraft.destination ?? "",
                    style: activeWidgetTextStyle,
                  ),
                  Text(
                    widget.aircraft.assignedSquawk ?? "",
                    style: activeWidgetTextStyle,
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: widthColumn7,
              child: Column(
                children: [
                  Text(
                    widget.aircraft.sid ?? "",
                    style: activeWidgetTextStyle,
                  ),
                  Text(
                    "",
                    style: activeWidgetTextStyle,
                  )
                ],
              ),
            ),
          ),
          Flexible(
              child: Column(
            children: [
              Row(
                children: [
                  Text(
                    DateFormat('HH:mm').format(widget.aircraft.cdm.atot),
                    style: activeWidgetTextStyle,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    widget.aircraft.assignedRunway ?? "",
                    style: activeWidgetTextStyle,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
