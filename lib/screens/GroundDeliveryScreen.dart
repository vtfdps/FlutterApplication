import 'package:flutter/material.dart';
import 'package:vtfdps/widgets/ActiveWidget.dart';
import 'package:vtfdps/widgets/ArrPendingWidget.dart';
import '../globals/colors/colors.dart';
import '../models/AircraftClass.dart';
import '../widgets/AirborneWidget.dart';
import '../widgets/HeaderWidget.dart';

class GroundDeliveryGrid extends StatelessWidget {
  const GroundDeliveryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    const sizeRow1 = 0.3;
    const sizeRow2 = 0.40;
    const sizeRow34 = (1 - sizeRow2 - sizeRow1) / 2;

    return SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(children: [
          const HeaderWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: screenHeight * sizeRow1,
                width: screenWidth,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: AirborneWidget()),
                      ),
                    ),
                    const VerticalDivider(
                      color: dividerColor,
                      thickness: 2,
                      width: 1,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: ActiveWidget(),
                      ),
                    ),
                    const VerticalDivider(
                      color: dividerColor,
                      thickness: 2,
                      width: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ArrPendingWidget(),
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
          )
        ]));
  }
}
