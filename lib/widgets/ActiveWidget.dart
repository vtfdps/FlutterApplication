import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vtfdps/globals/TextStyle/WidgetHeaderStyle.dart';
import 'package:vtfdps/globals/TextStyle/WidgetTextStyle.dart';

import '../globals/colors/colors.dart';
import '../globals/data.dart';
import '../models/AircraftClass.dart';

class ActiveWidget extends StatefulWidget {
  const ActiveWidget({super.key});

  @override
  State<ActiveWidget> createState() => _ActiveWidgetState();
}

class _ActiveWidgetState extends State<ActiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "ACTIVE",
          style: widgetHeaderStyle,
        ),
        const Divider(
          color: dividerColor,
          thickness: 2,
          height: 2,
        ),
        Flexible(
          child: ListView.separated(
            itemCount: Aircrafts.length,
            itemBuilder: (context, index) {
              return ActiveAircraftWidget(aircraft: Aircrafts[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              color: dividerColor,
              thickness: 2,
              height: 1,
            ),
          ),
        ),
      ],
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
  @override
  Widget build(BuildContext context) {
    final widgetHeight = MediaQuery.of(context).size.height;
    final widgetWidth = MediaQuery.of(context).size.width;

    final box1 = 1.1 / 21.1 * widgetWidth;
    final box2 = 2.1 / 21.1 * widgetWidth;
    final box3 = 1.5 / 21.1 * widgetWidth;
    final box4 = 3.8 / 21.1 * widgetWidth;
    final box5 = 3 / 21.1 * widgetWidth;
    final box6 = 3 / 21.1 * widgetWidth;
    final box7 = 4.5 / 21.1 * widgetWidth;
    final box8 = 2.1 / 21.1 * widgetWidth;

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
              width: box1,
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
              width: box2,
              child: Center(
                child: Text(
                  widget.aircraft.assignedRunway ?? "",
                  style: activeWidgetTextStyle,
                ),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: box3,
              child: Text(widget.aircraft.currentTaxiway ?? "",
                  style: activeWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: box4,
              child: Text(widget.aircraft.callsign ?? "",
                  style: activeWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: box5,
              child: Column(
                children: [
                  Container(
                    color: aircrafttypeColor,
                    child: Text(
                      widget.aircraft.aircrafttype ?? "",
                      style: activeWidgetTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                    child: const Divider(
                      color: dividerColor,
                      thickness: 2,
                      height: 2,
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
              width: box6,
              child: Text('E1029', style: activeWidgetTextStyle),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: box7,
              child: Column(
                children: [
                  Text(
                    widget.aircraft.sid ?? "",
                    style: activeWidgetTextStyle,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Divider(
                      color: dividerColor,
                      thickness: 2,
                      height: 1,
                    ),
                  ),
                  Text(
                    widget.aircraft.destination ?? "",
                    style: activeWidgetTextStyle,
                  )
                ],
              ),
            ),
          ),
          Flexible(
              child: SizedBox(
            width: box8,
            child: Column(children: [
              Text(
                widget.aircraft.airportposition ?? "",
                style: activeWidgetTextStyle,
              )
            ]),
          ))
        ],
      ),
    );
  }
}
