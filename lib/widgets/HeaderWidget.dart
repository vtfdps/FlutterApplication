import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

const HeaderTextStyle = TextStyle(
    color: Colors.white, fontSize: 22, decoration: TextDecoration.none);

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(15, 255, 255, 255),
      child: Column(
        children: [
          Center(
            child: ZuluTimeWidget(),
          )
        ],
      ),
    );
  }
}

class ZuluTimeWidget extends StatefulWidget {
  @override
  _ZuluTimeWidgetState createState() => _ZuluTimeWidgetState();
}

class _ZuluTimeWidgetState extends State<ZuluTimeWidget> {
  late DateTime _currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now().toUtc();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now().toUtc();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('HH:mm:ss').format(_currentTime);
    return Text(
      formattedTime,
      style: HeaderTextStyle,
    );
  }
}
