import 'package:app1/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
import 'image_and_card.dart';

class DetailBody extends StatelessWidget {
  const DetailBody(
      {Key? key,
      required this.image,
      required this.title,
      required this.marka,
      required this.price})
      : super(key: key);

  final String image;
  final String title;
  final String marka;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        TitleAndPrice(
          title: title,
          country: marka,
          price: price,
        ),
        ImageAndIconsCard(
          size: size,
          image: image,
        ),
      ]),
    );
  }
}

class DetailPhone extends StatelessWidget {
  const DetailPhone({
    Key? key,
    required this.description,
    required this.garanti,
    required this.hafiza,
    required this.ekranboyutu,
    required this.kamera,
    required this.pil,
    required this.ram,
  }) : super(key: key);

  final String description;
  final String hafiza;
  final String ekranboyutu;
  final String kamera;
  final String pil;
  final String ram;
  final String garanti;

  @override
  Widget build(BuildContext context) {
    DataTable dataTable = DataTable(
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
          DataCell(Text(hafiza)),
          DataCell(Text(ekranboyutu)),
          DataCell(Text(kamera)),
          DataCell(Text(pil)),
          DataCell(Text(ram)),
          DataCell(Text(garanti))
        ]),
      ],
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 25),
          child: Row(
            children: [
              Text(
                "Tüm Özellikler",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              dataTable,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            children: [
              Flexible(
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: "Ürün Açıklaması\n\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 33,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: description,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailLaptop extends StatelessWidget {
  const DetailLaptop({
    Key? key,
    required this.descripton,
    required this.hafiza,
    required this.ekrankarti,
    required this.islemci,
    required this.ram,
    required this.ekranboyutu,
    required this.garanti,
  }) : super(key: key);
  final String descripton;
  final String hafiza;
  final String ekrankarti;
  final String islemci;
  final String ram;
  final String ekranboyutu;
  final String garanti;

  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 25),
        child: Row(
          children: [
            Text(
              "Tüm Özellikler",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DataTable(
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
                  DataCell(Text('1TB SSD')),
                  DataCell(Text('15.6' '')),
                  DataCell(Text("	Nvidia GeForce RTX 3050")),
                  DataCell(Text('Intel Core i7 11370H')),
                  DataCell(Text('8 GB RAM')),
                  DataCell(Text("24"))
                ]),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Row(
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Ürün Açıklaması\n\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 33,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: descripton,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

class DetailTv extends StatelessWidget {
  const DetailTv({
    Key? key,
    required this.description,
    required this.piksel,
    required this.cozunurluk,
    required this.ekranebati,
    required this.ekranformati,
    required this.garanti,
    required this.uydualici,
  }) : super(key: key);

  final String description;
  final String piksel;
  final String cozunurluk;
  final String ekranebati;
  final String uydualici;
  final String ekranformati;
  final String garanti;

  Widget build(BuildContext context) {
    DataTable dataTable = DataTable(
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
          DataCell(Text(piksel)),
          DataCell(Text(cozunurluk)),
          DataCell(Text(ekranebati)),
          DataCell(Text(ekranformati)),
          DataCell(Text(uydualici)),
          DataCell(Text(garanti))
        ]),
      ],
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 25),
          child: Row(
            children: [
              Text(
                "Tüm Özellikler",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              dataTable,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            children: [
              Flexible(
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: "Ürün Açıklaması\n\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 33,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: description,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
