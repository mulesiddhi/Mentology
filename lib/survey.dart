import 'package:flutter/material.dart';
import 'package:flutter_basic/anxiety.dart';
import 'package:flutter_basic/curious.dart';
import 'package:flutter_basic/restless.dart';
import 'package:flutter_basic/sad.dart';
import 'package:flutter_basic/sleepless.dart';
import 'package:flutter_basic/stress.dart';
import './home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Survey extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[900],
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "How Are",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                shadows: [
                  Shadow(
                      color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
                ]),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "You Feeling Today?",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                shadows: [
                  Shadow(
                      color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
                ]),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sleepless()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "SLEEPLESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sad()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "SAD",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Anxiety()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "ANXIETY",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Curious()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "CURIOUS",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Restless()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "RESTLESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Stress()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "STRESSED",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
