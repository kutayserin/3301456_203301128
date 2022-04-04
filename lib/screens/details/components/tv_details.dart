import 'package:flutter/material.dart';

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
