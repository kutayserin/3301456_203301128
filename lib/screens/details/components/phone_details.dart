import 'package:flutter/material.dart';

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
