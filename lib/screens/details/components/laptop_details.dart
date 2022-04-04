import 'package:flutter/material.dart';

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
                  DataCell(Text(hafiza)),
                  DataCell(Text(ekranboyutu)),
                  DataCell(Text(ekrankarti)),
                  DataCell(Text(islemci)),
                  DataCell(Text(ram)),
                  DataCell(Text(garanti)),
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
