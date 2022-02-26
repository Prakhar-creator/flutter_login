import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://media-exp1.licdn.com/dms/image/C5603AQEzeubEmQO-Sg/profile-displayphoto-shrink_200_200/0/1617099582030?e=1649289600&v=beta&t=2iwr32qLXzeTc-8bpviMALSMuWqQpnTZbOFE284M-lw";
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Prakhar"),
                accountEmail: Text("prakharmishra288@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                ),
              ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text("home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text("Email",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text("Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    )))
          ],
        ),
      ),
    );
  }
}
