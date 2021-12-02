import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import './signup.dart';
import './login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 50),
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
              margin: EdgeInsets.only(bottom: 30),
              child: Center(
                  child: Text("A place to feel better, wherever you go.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )))),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child: Image.asset('assets/images/home.png'),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "Mentology is a free mental health app whose tools and insight are meant to “shape up” your mood. Similar to the way you might decide to get into physical shape, this app is meant to help you get into mental shape.",
                textAlign: TextAlign.center,
              ))),
          Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              child: Center(
                  child: Text(
                "Improve your mental health in the most convenient and affordable way!",
                textAlign: TextAlign.center,
              ))),
          Container(
              margin: EdgeInsets.all(5),
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink[800]!),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text('Sign Up'),
              )),
          Container(
            margin: EdgeInsets.all(5),
            child: RichText(
              text: TextSpan(
                text: 'Already Have An Account? ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: 'Log In',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            ),
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
