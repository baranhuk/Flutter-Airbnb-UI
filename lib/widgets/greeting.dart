import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  final String name;
  Greeting({this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 100, 20),
      child: Text(
        'What can we help you find, $name?',
        style: TextStyle(
          letterSpacing: -1,
          wordSpacing: -1,
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
