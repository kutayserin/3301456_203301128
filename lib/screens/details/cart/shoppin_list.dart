import 'package:app1/constants.dart';
import 'package:app1/screens/details/cart/product_model.dart';
import 'package:app1/screens/details/cart/screens/checkoutscreen.dart';
import 'package:app1/screens/details/cart/screens/product_screen.dart';
import 'package:app1/screens/details/cart/screens/test_product_screen.dart';
import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key? key}) : super(key: key);

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Alışveriş Listesi"),
          backgroundColor: qPrimaryColor,
          bottom: TabBar(
            indicatorColor: qBackGroundColor,
            tabs: <Widget>[
              Tab(
                text: "Tüm Ürünler",
              ),
              Tab(
                text: "Ödeme",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen((selectedProduct) {
              setState(() {
                cart.add(selectedProduct); //update
                sum = 0;
                cart.forEach((item) {
                  sum = sum + item.price;
                });
              });
            }),
            //test(),
            CheckoutScreen(cart, sum, (deleteProduct) {
              setState(() {
                for (var i = 0; i < cart.length; i++) {
                  if (cart[i].name == deleteProduct.name) {
                    cart.removeAt(i);
                    break;
                  }
                }
                sum = 0;
                cart.forEach((item) {
                  sum = sum + item.price;
                });
              });
            }),
          ],
        ),
      ),
    );
  }
}
