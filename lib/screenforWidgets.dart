import 'package:flutter/material.dart';

class Screenforwidgets extends StatefulWidget {
  const Screenforwidgets({super.key});

  @override
  State<Screenforwidgets> createState() => _ScreenforwidgetsState();
}

class _ScreenforwidgetsState extends State<Screenforwidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen for widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.40,
              alignment: Alignment.center,
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.grey,
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  color: Colors.teal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
