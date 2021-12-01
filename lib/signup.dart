import 'package:flutter/material.dart';
import './home.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //form  key
  final _formKey = GlobalKey<FormState>();
  //editting controller
  final _nameController = new TextEditingController();
  final _emailController = new TextEditingController();
  final _passwordController = new TextEditingController();
  final _confirmPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //name field
    final namefield = TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.name,
      autofocus: false,
      style: TextStyle(
        color: Colors.black,
      ),
      onSaved: (String? value) {
        _nameController.text = value!;
      },
      decoration: new InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: 'XYZ',
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          labelText: 'Your Name',
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      textInputAction: TextInputAction.next,
    );

    //email field
    final emailfield = TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
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
        onSaved: (String? value) {
          _passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: new InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.vpn_key),
            labelText: 'Enter your password',
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )));

    final confirmpasswordfield = TextFormField(
        controller: _confirmPasswordController,
        autofocus: false,
        obscureText: true,
        onSaved: (String? value) {
          _passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: new InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.vpn_key),
            labelText: 'Confirm password',
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )));

    final signupButton = Material(
      color: Colors.pink[800],
      elevation: 5.0,
      borderRadius: BorderRadius.circular(18.0),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => {},
        child: Text(
          "SignUp",
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
                  child: Text("Get Started",
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
                    namefield,
                    SizedBox(height: 20.0),
                    emailfield,
                    SizedBox(height: 20.0),
                    passwordfield,
                    SizedBox(height: 20.0),
                    confirmpasswordfield,
                    SizedBox(height: 40.0),
                    signupButton,
                  ],
                ),
              ))
        ]));
  }
}
