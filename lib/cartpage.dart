import 'package:flutter/material.dart';
import 'package:flutter_login/item_detail_page.dart';
import 'package:flutter_login/models/cart.dart';
import 'package:flutter_login/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Column(children: [
        Padding(padding: EdgeInsets.all(32)),
        Expanded(
          child: _CartList(),
        ),
        Divider(),
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: ((context, store, status) => Text(
                  "\$${_cart.totalPrice}",
                )),
          ),
          WidthBox(30),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Buying not supported yet")));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppTheme.darkBlackishColor)),
            child: Text(
              "BUY",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                    onPressed: () {
                      RemoveMutation(_cart.items[index]);
                    },
                    icon: Icon(Icons.remove_circle_outline),
                  ),
                  title: Text(_cart.items[index].name),
                ));
  }
}
