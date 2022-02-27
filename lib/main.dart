import 'package:flutter/material.dart';
import 'package:flutter_login/utils/routes.dart';
import 'package:flutter_login/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_login/widgets/drawer.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lighttheme(context),
      darkTheme: AppTheme.darkTheme(context),
      initialRoute: PrakharRoutes.homeRoute,
      routes: {
        PrakharRoutes.homeRoute: (context) => home(),
        PrakharRoutes.loginRoute: (context) => login(),
      },
    );
  }
}
