import 'package:flutter/material.dart';
import './signup.dart';
import './therapy.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                margin:
                    EdgeInsets.only(left: 10, top: 40, right: 0, bottom: 00),
                child: Text("Welcome,",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ))),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today’s check-in',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Let’s see how you’re doing!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // margin:
                    //     EdgeInsets.only(left: 00, top: 0, right: 0, bottom: 0),
                    child: Image.asset('assets/images/brain.png'),
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pink[800]!),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Therapy()),
                          );
                        },
                        child: Text('    Continue    '),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Take your next step',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Continue with your Exercises',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pink[800]!),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Therapy()),
                          );
                        },
                        child: Text("     Let's Go     "),
                      )),
                  Container(
                    // margin:
                    //     EdgeInsets.only(left: 00, top: 0, right: 0, bottom: 0),
                    child: Image.asset('assets/images/tree.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 00, top: 30, right: 0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: Text("Match with your Wellness Specialist",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )))),
                  Container(
                      margin: EdgeInsets.all(0),
                      // height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pink[800]!),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Therapy()),
                          );
                        },
                        child: Text("     Get Started Now     "),
                      )),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 00, top: 0, right: 0, bottom: 20),
              child: Center(child: Image.asset('assets/images/therapy.png')),
            ),
            Container(
                child: Column(
              children: [
                ActionChip(
                  label: Text("Logout"),
                  onPressed: () => {},
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  padding: EdgeInsets.all(15),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ))
          ],
        ));
  }
}
