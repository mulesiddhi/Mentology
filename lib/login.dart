import 'package:flutter/material.dart';
import 'package:flutter_basic/signup.dart';
import './home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controllers
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  //firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final emailfield = TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter email';
        }
        //regex for email
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      autofocus: false,
      style: TextStyle(
        color: Colors.black,
      ),
      onSaved: (String? value) {
        _emailController.text = value!;
      },
      decoration: new InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: 'you@example.com',
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          labelText: 'E-mail Address',
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      textInputAction: TextInputAction.next,
    );

    final passwordfield = TextFormField(
        controller: _passwordController,
        autofocus: false,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (String? value) {
          _passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: new InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.vpn_key),
            labelText: 'Enter your password',
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )));

    final loginButton = Material(
      color: Colors.pink[800],
      elevation: 5.0,
      borderRadius: BorderRadius.circular(18.0),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          )
        },
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 50, top: 70, right: 50, bottom: 20),
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
                    SizedBox(height: 40.0),
                    emailfield,
                    SizedBox(height: 20.0),
                    passwordfield,
                    SizedBox(height: 40.0),
                    loginButton,
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.pink[800],
                              fontSize: 15.0,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                        )
                      ],
                    )
                  ],
                ),
              ))
        ]));
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {}
  }
}

//login function

