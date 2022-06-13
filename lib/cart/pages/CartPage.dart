import 'package:app1/cart/pages/HomePage.dart';
import 'package:app1/constants.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homePageController.dart';
import '../models/ItemModel.dart';
import 'ItemDetail.dart';

class CartPage extends StatelessWidget {
  Widget generateCart(BuildContext context, ProductModel d) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(d.image), fit: BoxFit.cover)),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 10.0, left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          d.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.find<HomePageController>()
                                .removeFromCart(d.shopId ?? 0);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Ürün başarıyla çıkarıldı")));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.remove_circle_outline,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Fiyat ${d.price.toString()}"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  getItemTotal(List<ProductModel> items) {
    double sum = 0.0;
    items.forEach((e) {
      sum += e.price;
    });
    return "$sum TL";
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomePageController>();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepetim"),
        backgroundColor: qPrimaryColor,
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: GetBuilder<HomePageController>(
                builder: (_) {
                  if (controller.cartItems.length == 0) {
                    return Center(
                      child: Text("Ürün bulunamadı"),
                    );
                  }
                  return ListView(
                    shrinkWrap: true,
                    children: controller.cartItems
                        .map((d) => generateCart(context, d))
                        .toList(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: GetBuilder<HomePageController>(
                builder: (_) {
                  return RichText(
                    text: TextSpan(
                        text: "Toplam  ",
                        style: TextStyle(color: qTextColor, fontSize: 18),
                        children: [
                          TextSpan(
                              text:
                                  getItemTotal(controller.cartItems).toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ]),
                  );
                },
              )),
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                color: Colors.white,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple)),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      child: Text(
                        "Öde",
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
