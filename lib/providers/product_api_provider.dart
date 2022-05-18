import 'package:app1/model/product_model.dart';
import 'package:app1/providers/db_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ProductApiProvider {
  Future<List<Product>> getAllProducts() async {
    var url = "https://demo9799516.mockable.io/";
    Response response = await Dio().get(url);

    return (response.data).map((product) {
      print('Inserting $product');
      DBProvider.db.createProduct(Product.fromJson(product));
    }).toList();
  }
}
