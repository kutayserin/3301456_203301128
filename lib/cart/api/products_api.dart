import 'dart:convert';

import 'package:app1/cart/models/ItemModel.dart';
import 'package:http/http.dart' as http;

class ProductsApi {
  static Future<List<ProductModel>> getProducts(String query) async {
    final url = Uri.parse('https://demo9799516.mockable.io/kutay');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List products = json.decode(response.body);
      return products
          .map((json) => ProductModel.fromJson(json))
          .where((product) {
        final nameLower = product.name.toLowerCase();
        final brandLower = product.brand.toLowerCase();
        final searchLower = query.toLowerCase();

        return nameLower.contains(searchLower) ||
            brandLower.contains(searchLower);
      }).toList();
    }
    if (response.statusCode == 200) {
      final List products = json.decode(response.body);
      return products
          .map((json) => ProductModel.fromJson(json))
          .where((product) {
        final nameLower = product.name.toLowerCase();
        final brandLower = product.brand.toLowerCase();
        final searchLower = query.toLowerCase();

        return nameLower.contains(searchLower) ||
            brandLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
