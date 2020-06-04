import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  final String otherScreen;
  OtherScreen({this.otherScreen});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(otherScreen),
    );
  }
}
