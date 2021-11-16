import 'package:flutter/material.dart';
import './welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink[50]),
      home: Welcome(),
    );
  }
}
