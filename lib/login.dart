import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        'Welcome to login Page',
        style: TextStyle(
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 0.5,
      )),
    );
  }
}
