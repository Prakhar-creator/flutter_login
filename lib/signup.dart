import 'dart:html';
import 'package:flutter_login/utils/routes.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final formkey = GlobalKey<FormState>();
  enter() {
    if (formkey.currentState!.validate()) {
      Navigator.pushNamed(context, PrakharRoutes.homeRoute);
    }
  }

  var s;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: (SingleChildScrollView(
            child: Form(
                key: formkey,
                child: Column(children: [
                  Image.asset(
                    "assets/images/loginimage.png",
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Sign-up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      labelText: "Full Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email Address",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter  Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      labelText: "Confirm Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password are not same";
                      }
                      return null;
                    },
                  ),
                  Column(children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: () => enter(),
                          child: ElevatedButton(
                            child:
                                Text("Sign-up", style: TextStyle(fontSize: 20)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(20),
                                ),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(fontSize: 10))),
                            onPressed: () {
                              enter();
                            },
                          ),
                        ))
                  ]),
                ])))));
  }
}
