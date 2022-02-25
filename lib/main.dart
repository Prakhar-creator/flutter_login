import 'package:flutter/material.dart';
import 'package:flutter_login/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: "/login",
      routes: {
        PrakharRoutes.homeRoute: (context) => home(),
        PrakharRoutes.loginRoute: (context) => login(),
      },
    );
  }
}
