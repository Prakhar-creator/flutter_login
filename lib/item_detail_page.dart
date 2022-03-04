import 'dart:convert';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_login/cartpage.dart';
import 'package:flutter_login/models/cart.dart';
import 'package:flutter_login/models/catalog.dart';
import 'package:flutter_login/utils/routes.dart';
import 'package:flutter_login/widgets/drawer.dart';
import 'package:flutter_login/widgets/item_widget.dart';
import 'package:flutter_login/widgets/themes.dart';

class itemdetail extends StatelessWidget {
  final Item catalog;
  const itemdetail({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
        ),
        body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              children: [
                Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.image,
                    width: 350,
                    height: 350,
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  catalog.name,
                ),
                Text(catalog.desc),
                Text(
                  "\$${catalog.price}",
                  textScaleFactor: 2,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.zero,
            children: [
              AddToCart(
                catalog: catalog,
              )
            ]));
  }
}

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isinCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isinCart) {
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(AppTheme.darkBlackishColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isinCart ? Icon(Icons.done) : "Add to cart".text.make(),
    );
  }
}
