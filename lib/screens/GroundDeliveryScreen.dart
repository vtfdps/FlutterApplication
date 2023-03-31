import 'package:flutter/material.dart';

class GroundDeliveryGrid extends StatelessWidget {
  const GroundDeliveryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: screenHeight * 0.25,
            width: screenWidth,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text('AIRBORNE & DEP - RDY'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('Widget 2'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('Widget 3'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
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
          Expanded(
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
                      child: Text('ARR - GNDLOCK?'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
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
        ],
      ),
    );
  }
}
