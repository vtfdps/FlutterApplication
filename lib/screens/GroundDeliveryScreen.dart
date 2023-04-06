import 'package:flutter/material.dart';
import '../models/AircraftClass.dart';
import '../widgets/AirborneWidget.dart';

class GroundDeliveryGrid extends StatelessWidget {
  const GroundDeliveryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final sizeRow1 = 0.269;
    final sizeRow2 = 0.415;
    final sizeRow34 = (1 - sizeRow2 - sizeRow1) / 2;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: screenHeight * sizeRow1,
            width: screenWidth,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: AirborneWidget()),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                        child: ElevatedButton(
                      child: const Text('Press'),
                      onPressed: () {
                        final GlobalKey<AirborneWidgetState> airborneKey =
                            GlobalKey<AirborneWidgetState>();

                        List<Aircraft> newAircraft = [
                          Aircraft(
                              callsign: 'DAL123', aircrafttype: 'Boeing 737'),
                          Aircraft(
                              callsign: 'AAL456', aircrafttype: 'Airbus A320'),
                        ];

                        airborneKey.currentState
                            ?.updateAircraftList(newAircraft);
                      },
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('ARR - PENDING'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * sizeRow2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: Center(
                        child: Text('DEP - GND'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                      child: Center(
                        child: Text('ARR - TAXI'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * sizeRow34,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.orange,
                      child: Center(
                        child: Text('Delivery'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                      child: Center(
                        child: Text('ARR - ONBLOCK'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * sizeRow34,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text('Pending'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
