import 'package:flutter/material.dart';
import 'package:respon_adap/screens.dart';

class Screen02 extends StatefulWidget {
  const Screen02({super.key});

  @override
  State<Screen02> createState() => _Screen02State();
}

class _Screen02State extends State<Screen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens(
          desktop: Row(
            children: getListOfWidgets(context),
          ),
          mobile: Column(
            children: getListOfWidgets(context),
          ),
          tab: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: getListOfWidgets(context),
          )),
    );
  }

  List<Widget> getListOfWidgets(BuildContext context) {
    List<Color> colors = [Colors.black, Colors.red, Colors.blue, Colors.purple];
    List<Widget> getListOfWidget = [];

    for (int i = 0; i < colors.length; i++) {
      getListOfWidget.add(Expanded(
        child: Container(
          color: colors[i],
          child: Center(child: Text('${i + 1} section')),
        ),
      ));
    }
    return getListOfWidget;
  }
}
