import 'package:flutter/material.dart';
import 'package:flutter_login/core/store.dart';
import 'package:flutter_login/home_page.dart';
import 'package:flutter_login/item_detail_page.dart';
import 'package:flutter_login/models/catalog.dart';
import 'package:flutter_login/signup.dart';
import 'package:flutter_login/utils/routes.dart';
import 'package:flutter_login/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_login/widgets/drawer.dart';
import 'package:flutter_login/signup.dart';
import 'package:velocity_x/velocity_x.dart';
import 'home_page.dart';
import 'login.dart';
import 'package:flutter_login/cartpage.dart';

void main() {
  runApp(VxState(store: MyStore(),
  child: MyApp()));
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
        PrakharRoutes.homeRoute: (context) => HomePage(),
        PrakharRoutes.loginRoute: (context) => login(),
        PrakharRoutes.signupRoute: (context) => signup(),
        PrakharRoutes.cartpageRoute: (context) => cart(),
      },
    );
  }
}
