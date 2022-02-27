import 'package:flutter/material.dart';
import 'package:flutter_login/models/catalog.dart';
import 'package:flutter_login/widgets/drawer.dart';
import 'package:flutter_login/widgets/item_widget.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(1, (index) => catalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text('Catalogue App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(item: catalogModel.items[index]);
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
