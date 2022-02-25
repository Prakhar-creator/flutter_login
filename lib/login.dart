import 'package:flutter/material.dart';
import 'package:flutter_login/utils/routes.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Login  $name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            ),
            Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Username",
                    ),
                    onChanged: (Value) {
                      name = Value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Securitykey",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, PrakharRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 100 : 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 8 : 16),
                    ),
                  ),
                  //ElevatedButton(
                  //  child: Text("Sign-in"),
                  //  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //  onPressed: () {
                  //    Navigator.pushNamed(context, PrakharRoutes.homeRoute);
                  //  },
                ), // ),
              ],
            )
          ],
        )));
  }
}
