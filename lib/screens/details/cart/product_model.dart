import 'package:app1/screens/details/components/laptop_details.dart';
import 'package:flutter/material.dart';

import '../../../image.dart';

class ProductModel {
  late final String name;
  late final int price;
  late final String image;

  static final List<ProductModel> products = [
    ProductModel(samsungphone!, "Samsung Phone", 13000),
    ProductModel(iphone!, " IPhone", 15000),
    ProductModel(redmi!, "Redmi Note 10 Pro", 6000),
    ProductModel(lenovo!, "Lenovo IdeaPad 3", 14000),
    ProductModel(msi!, "MSI Katana", 17000),
    ProductModel(casper!, "Casper Excalibur", 14750),
    ProductModel(samsungtv!, "Samsung 55Q70A", 13600),
    ProductModel(lgtv!, " LG OLED55B16LA", 15998),
    ProductModel(vesteltv!, "VESTEL 43F9510", 4946),
  ];

  ProductModel(
    String image,
    String name,
    int price,
  ) {
    this.image = image;
    this.name = name;
    this.price = price;
  }
}
