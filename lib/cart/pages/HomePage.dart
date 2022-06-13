import 'dart:convert';

import 'package:app1/cart/pages/FilterList.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../constants.dart';
import '../../services/auth/auth_methods.dart';

import '../controller/homePageController.dart';
import '../models/ItemModel.dart';
import '../services/itemService.dart';
import 'AboutPage.dart';
import 'CartPage.dart';
import 'ContactPage.dart';
import 'ItemDetail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  ItemServices itemServices = ItemServices();
  List<ProductModel> items = [];
  final HomePageController controller = Get.put(HomePageController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: imlement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: qPrimaryColor,
        title: Text("Ürünler"),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilterList()));
              },
              icon: Icon(Icons.search)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                child: alignCartNumber()),
          ),
        ],
      ),
      body: Container(child: buildPages()),
      bottomNavigationBar: buildBottomBar(),
      drawer: NavigationDrawer(),
    );
  }

  Widget buildBottomBar() {
    return BottomNavigationBar(
      selectedItemColor: qPrimaryColor,
      unselectedItemColor: qBackGroundColor,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined), label: "Tüm Ürünler"),
        BottomNavigationBarItem(
            icon: Icon(Icons.phone_android_outlined), label: "Akıllı Telefon"),
        BottomNavigationBarItem(
            icon: Icon(Icons.laptop_outlined), label: "Laptop"),
        BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: "Tv"),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    return Container(
      child: GetBuilder<HomePageController>(
        init: controller,
        builder: (_) => controller.isLoading
            ? Center(child: CircularProgressIndicator())
            : swtch(),
      ),
    );
  }

  Widget swtch() {
    switch (index) {
      case 0:
        return ShopItemListing(
          items: controller.items,
        );

      case 1:
        return PhoneListing(
          items: controller.items,
        );

      case 2:
        return LaptopListing(
          items: controller.items,
        );
      case 3:
        return TvListing(
          items: controller.items,
        );
      default:
        return Container();
    }
  }

  Widget alignCartNumber() {
    return Stack(
      children: [
        GetBuilder<HomePageController>(
            builder: (_) => Align(
                  child: Text(controller.cartItems.length > 0
                      ? controller.cartItems.length.toString()
                      : ''),
                  alignment: Alignment.topCenter,
                )),
        Align(
          child: Icon(Icons.shopping_cart),
          //alignment: Alignment.center,
        ),
      ],
    );
  }
}

String akilli = "Akıllı Telefon";
String laptop = "Laptop";
String tv = "TV";

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
      );
}

buildHeader(BuildContext context) => Material(
      color: qBackGroundColor,
      child: Container(
        padding: EdgeInsets.only(top: 60, bottom: 40),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/ktechlogo.jpg"),
            ),
            Text(
              "Kutay's Tech",
              style: TextStyle(
                  fontSize: 29,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
buildMenuItems(BuildContext context) => Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Ana Sayfa"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          Divider(
            color: qPrimaryColor,
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined),
            title: Text("Sepetim"),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => CartPage())));
            },
          ),
          Divider(
            color: qPrimaryColor,
          ),
          ListTile(
              leading: Icon(Icons.contact_page_outlined),
              title: Text("İletişim"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ContactPage()));
              }),
          Divider(
            color: qPrimaryColor,
          ),
          ListTile(
              leading: Icon(Icons.info_outlined),
              title: Text("Hakkında"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AboutPage()));
              }),
          Divider(
            color: qPrimaryColor,
          ),
          ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: Text("Çıkış Yap"),
              onTap: () {
                context.read<FlutterFireAuthService>().logOut(context);
              }),
        ],
      ),
    );

class PhoneListing extends StatelessWidget {
  final List<ProductModel> items;
  //final List<ProductModel> b;
  PhoneListing({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductModel> b = items.expand((e) => [if (e.tip == "1") e]).toList();
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.45,
          //mainAxisExtent: 500,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (BuildContext context, index) {
          return ItemView(item: b[index]);
        },

        //item: items[index],

        // items[index],

        itemCount: b.length,
      ),
    );
  }
}

class LaptopListing extends StatelessWidget {
  final List<ProductModel> items;
  //final List<ProductModel> b;
  LaptopListing({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductModel> b = items.expand((e) => [if (e.tip == "2") e]).toList();
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.45,
          //mainAxisExtent: 500,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (BuildContext context, index) {
          return ItemView(item: b[index]);
        },

        //item: items[index],

        // items[index],

        itemCount: b.length,
      ),
    );
  }
}

class TvListing extends StatelessWidget {
  final List<ProductModel> items;
  //final List<ProductModel> b;
  TvListing({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductModel> b = items.expand((e) => [if (e.tip == "3") e]).toList();
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.45,
          //mainAxisExtent: 500,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (BuildContext context, index) {
          return ItemView(item: b[index]);
        },

        //item: items[index],

        // items[index],

        itemCount: b.length,
      ),
    );
  }
}

class ShopItemListing extends StatelessWidget {
  final List<ProductModel> items;

  ShopItemListing({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.45,
          //mainAxisExtent: 500,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (BuildContext context, index) {
          return ItemView(item: items[index]);

          //          if (items[index].tip == "2") {
          //          return ItemView(item: items[index]);
          //      }
          //    if (items[index].tip == "3") {
          //    return ItemView(item: items[index]);
        },
        //item: items[index],

        // items[index],

        itemCount: items.length,
      ),
    );
  }
}

nameTipWidget(item) {
  if (item.tip == "1") {
    return "Akıllı Telefon";
  }
  if (item.tip == "2") {
    return "Laptop";
  }
  if (item.tip == "3") {
    return "TV";
  }
}

class ItemView extends StatelessWidget {
  final ProductModel item;

  ItemView({required this.item});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ZoomTapAnimation(
      onLongTap: () {},
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => ItemDetailPage(
                      itemId: item.id,
                    ))));
          },
          child: Container(
            height: 399,
            width: 400,
            child: Material(
              child: Container(
                  height: 430.0,
                  width: 300,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 8.0)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.grey.shade200,
                        height: 55,
                        child: Center(
                            child: Text(
                          nameTipWidget(item),
                          style: TextStyle(
                              color: qPrimaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text(
                          item.brand,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 130.0,
                        width: 1003,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Image.network(
                                    item.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "${item.name}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Text(
                                "${item.price.toString()}TL",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
