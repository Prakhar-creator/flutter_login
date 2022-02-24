import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: "/home",
      routes: {
        "/": (context) => home(),
        "/login": (context) => login(),
      },
    );
  }
}
