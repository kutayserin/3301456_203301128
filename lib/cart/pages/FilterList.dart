import 'dart:async';

import 'package:app1/cart/models/ItemModel.dart';
import 'package:app1/cart/pages/HomePage.dart';
import 'package:app1/constants.dart';

import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../main.dart';
import '../api/products_api.dart';
import '../widgets/SearchWidget.dart';
import 'ItemDetail.dart';

class FilterList extends StatefulWidget {
  @override
  FilterListState createState() => FilterListState();
}

class FilterListState extends State<FilterList> {
  List<ProductModel> products = [];
  String query = '';

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    final products = await ProductsApi.getProducts(query);

    setState(() => this.products = products);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Arama & Filtreleme",
            style: TextStyle(color: qPrimaryColor),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: <Widget>[
              buildSearch(),
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];

                    return buildProduct(product);
                  },
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Ürün ismi, ürün markası',
        onChanged: searchProduct,
      );

  Future searchProduct(String query) async {
    final products = await ProductsApi.getProducts(query);

    //if (!mounted) return;

    setState(() {
      this.query = query;
      this.products = products;
    });
  }

  Widget buildProduct(ProductModel product) => ZoomTapAnimation(
        onLongTap: () {},
        child: ListTile(
          leading: Image.network(
            product.image,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
          title: Text(product.name),
          subtitle: Text(product.brand),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => ItemDetailPage(itemId: product.id))));
          },
        ),
      );
}
