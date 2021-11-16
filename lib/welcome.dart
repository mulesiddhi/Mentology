import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            child: Center(
              child: Text(
                "MENTOLOGY",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 3)
                    ]),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child: Image.asset('assets/images/home.png'),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text("SMALL MOMENTS COUNT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )))),
          Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              child: Center(
                  child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                textAlign: TextAlign.center,
              ))),
        ],
      ),
    );
  }
}
