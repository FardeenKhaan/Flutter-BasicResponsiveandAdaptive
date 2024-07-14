import 'package:flutter/material.dart';
import 'package:respon_adap/screens.dart';

class Screen01 extends StatefulWidget {
  const Screen01({super.key});

  @override
  State<Screen01> createState() => _Screen01State();
}

class _Screen01State extends State<Screen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens(
          desktop: Expanded(
              child: Container(
            color: Colors.red,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Desktop'),
                ],
              ),
            ),
          )),
          mobile: Expanded(
              child: Container(
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Mobile'),
                ],
              ),
            ),
          )),
          tab: Expanded(
              child: Container(
            color: Colors.green,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tablet'),
                ],
              ),
            ),
          ))),
    );
  }
}
