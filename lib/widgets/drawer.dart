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
        color: const Color.fromARGB(255, 44, 43, 43),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text("Prakhar"),
                accountEmail: const Text("prakharmishra288@gmail.com"),
                decoration: const BoxDecoration(color: Colors.black),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                ),
              ),
            ),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text("home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ),
                title: Text("Checkout",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.cube_box,
                  color: Colors.white,
                ),
                title: Text("orders",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.book,
                  color: Colors.white,
                ),
                title: Text("Terms And Condition",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.shield,
                  color: Colors.white,
                ),
                title: Text("Privacy Policy",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.info,
                  color: Colors.white,
                ),
                title: Text("About Developer",
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
