import 'dart:io';

import 'package:app1/constants.dart';
import 'package:app1/image.dart';
import 'package:app1/screens/details/cart/screens/checkoutscreen.dart';
import 'package:flutter/material.dart';
import '../product_model.dart';

class ProductScreen extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen(this._valueSetter);

  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(ProductModel.products[index].image),
              title: Text(
                ProductModel.products[index].name,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${ProductModel.products[index].price}TL",
                    style: TextStyle(
                        color: qBackGroundColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: (() {
                        _valueSetter(ProductModel.products[index]);
                      }),
                      icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: ProductModel.products.length);
  }
}
