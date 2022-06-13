import 'dart:convert';

import 'package:app1/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homePageController.dart';
import '../models/ItemModel.dart';
import '../widgets/CustomButton.dart';
import '../widgets/DotWidget.dart';

class ItemDetailPage extends StatefulWidget {
  final int itemId;

  ItemDetailPage({required this.itemId});

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  late PageController pageController;
  int active = 0;
  String image =
      "https://cdn.dsmcdn.com/mnresize/1200/1800/ty161/product/media/images/20210816/17/119082397/227669870/1/1_org_zoom.jpg";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  Widget buildDot(int index, int num) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
            color: (num == index) ? Colors.black38 : Colors.grey[200],
            shape: BoxShape.circle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.find<HomePageController>();
    ProductModel model = controller.getItem(widget.itemId);

    DataTable phoneDataTable = DataTable(
      columns: [
        DataColumn(label: const Text('Dahili Hafıza')),
        DataColumn(label: const Text("Ekran Boyutu")),
        DataColumn(label: const Text('Kamera Çözünürlüğü')),
        DataColumn(label: const Text('Pil Gücü')),
        DataColumn(label: const Text("RAM Kapasitesi")),
        DataColumn(label: const Text('Garanti Süresi (Ay)')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(model.hafiza)),
          DataCell(Text(model.ekranboyutu)),
          DataCell(Text(model.kamera)),
          DataCell(Text(model.pil)),
          DataCell(Text(model.ram)),
          DataCell(Text(model.garanti))
        ]),
      ],
    );
    DataTable laptopDataTable = DataTable(
      columns: [
        DataColumn(label: Text('Dahili Hafıza')),
        DataColumn(label: Text("Ekran Boyutu")),
        DataColumn(label: Text('Ekran Kartı')),
        DataColumn(label: Text('İşlemci')),
        DataColumn(label: Text("RAM Kapasitesi")),
        DataColumn(label: Text('Garanti Süresi (Ay)')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(model.hafiza)),
          DataCell(Text(model.ekranboyutu)),
          DataCell(Text(model.ekrankarti)),
          DataCell(Text(model.islemci)),
          DataCell(Text(model.ram)),
          DataCell(Text(model.garanti)),
        ]),
      ],
    );
    DataTable tvDataTable = DataTable(
      columns: [
        DataColumn(label: Text('Çözünürlük(Piksel)')),
        DataColumn(label: Text("Çözünürlük")),
        DataColumn(label: Text('Ekran Ebatı')),
        DataColumn(label: Text("Ekran Formatı")),
        DataColumn(label: Text('Dahili Uydu Alıcı')),
        DataColumn(label: Text('Garanti Süresi (Ay)')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(model.piksel)),
          DataCell(Text(model.cozunurluk)),
          DataCell(Text(model.ekranebati)),
          DataCell(Text(model.ekranformati)),
          DataCell(Text(model.uydualici)),
          DataCell(Text(model.garanti))
        ]),
      ],
    );
    Widget? tipWidget() {
      if (model.tip == "1") {
        return phoneDataTable;
      } else if (model.tip == "2") {
        return laptopDataTable;
      } else if (model.tip == "3") {
        return tvDataTable;
      }
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: Icon(
            Icons.arrow_back,
          ),
          color: qPrimaryColor,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Kutay's Tech",
          style: TextStyle(color: qPrimaryColor),
        ),
        elevation: 0.3,
        shadowColor: qPrimaryColor,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 280.0,
                  padding: EdgeInsets.only(top: 10.0),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        child: PageView(
                          controller: pageController,
                          onPageChanged: (index) {
                            print(index);
                            setState(() {
                              active = index;
                            });
                          },
                          children: <Widget>[
                            Image.network(
                              model.image,
                              height: 150.0,
                            ),
                            Image.network(
                              model.image2,
                              height: 150.0,
                            ),
                            Image.network(
                              model.image3,
                              height: 150.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DotWidget(
                            activeIndex: active,
                            dotIndex: 0,
                          ),
                          DotWidget(
                            activeIndex: active,
                            dotIndex: 1,
                          ),
                          DotWidget(
                            activeIndex: active,
                            dotIndex: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GetBuilder<HomePageController>(builder: (value) {
                  return Container(
                      height: 270.0,
                      alignment: Alignment(1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Column(
                          verticalDirection: VerticalDirection.down,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                      ));
                })
              ],
            ),
            Divider(
              color: Colors.grey[300],
              height: 1.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.name,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 19.0),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(model.description)),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Tüm Özellikler",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: tipWidget(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 18.0),
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: BorderSide(color: Colors.grey.shade300, width: 1.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      child: Text(
                        "Toplam Miktar",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ),
                    Text("${model.price.toString()}TL",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              GetBuilder<HomePageController>(builder: (_) {
                bool isAdded = controller.isAlreadyInCart(model.id);
                if (isAdded) {
                  return CustomButton(
                    name: "SEPETTEN ÇIKAR",
                    onTap: () async {
                      try {
                        controller.removeFromCart(model.id);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text("Ürün başarıyla sepetten çıkarıldı")));
                      } catch (e) {
                        print(e);
                      }
                    },
                  );
                }
                return CustomButton(
                  name: "SEPETE EKLE",
                  onTap: controller.isLoading
                      ? null
                      : () async {
                          try {
                            var result = await controller.addToCart(model);
                            controller.getCardList();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text("Ürün başarıyla sepete eklendi")));
                          } catch (e) {
                            print(e);
                          }
                        },
                );
              })
            ],
          )),
    );
  }
}
