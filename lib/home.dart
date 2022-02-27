import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_login/models/catalog.dart';
import 'package:flutter_login/widgets/drawer.dart';
import 'package:flutter_login/widgets/item_widget.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    print(productsData);
  }

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
