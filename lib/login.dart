import 'package:flutter/material.dart';
import './home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 20),
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
              padding: EdgeInsets.all(0),
              child: Center(
                  child: Text("Welcome Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink[600],
                      )))),
          Container(
              padding: new EdgeInsets.all(20.0),
              child: new Form(
                key: this._formKey,
                child: new ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    // We will add fields here.
                    new TextFormField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType
                            .emailAddress, // Use email input type for emails.
                        decoration: new InputDecoration(
                            hintText: 'you@example.com',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            labelText: 'E-mail Address',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))),
                    new TextFormField(
                        obscureText: true, // Use secure text for passwords.
                        decoration: new InputDecoration(
                            hintText: 'Password',
                            labelText: 'Enter your password',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))),
                    new Container(
                      // width: screenSize.width,
                      child: new ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pink[800]!),
                        ),
                        child: new Text(
                          'Login',
                          style: new TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        ),
                      ),
                      margin: new EdgeInsets.only(top: 40.0),
                    )
                  ],
                ),
              ))
        ]));
  }
}
