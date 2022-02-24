import 'dart:html';

import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello Flutter'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
