import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

import '../../../../model/product_model.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Text("${data.error}");
            } else if (data.hasData) {
              var items = data.data as List<Product>;
              return ListView.builder(
                // outer ListView
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text('Header ${items[index].name}'),
                      ),
                      ListView.builder(
                        // inner ListView
                        shrinkWrap: true, // 1st add
                        physics: ClampingScrollPhysics(), // 2nd add
                        itemCount: items[index].subCategories?.length,
                        itemBuilder: (context2, index2) => ListTile(
                          title: Text(
                              'Item ${items[index].subCategories?[index2]}'),
                        ),
                      )
                    ],
                  );
                },
              );
              /*   child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Card(
                        elevation: 5,
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(items[index].categoryId.toString()),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          items[index].subCategories.toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(items[index].name.toString()),
                                      ),
                                    ],
                                  ),
                                ))
                              ]),
                        ),
                      );
                    }),
              );*/
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

Future<List<Product>> ReadJsonData() async {
  final jsonData =
      await rootBundle.rootBundle.loadString('jsonfile/products.json');
  final list = json.decode(jsonData) as List<dynamic>;
  return list.map((e) => Product.fromJson(e)).toList();
}
