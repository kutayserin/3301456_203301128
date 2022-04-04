import 'package:app1/screens/home/components/smart_phone.dart';
import 'package:flutter/material.dart';
import 'smart_tv.dart';
import 'header.dart';
import 'laptop.dart';
import 'title_underline_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Header(),
        TitleWithCustomBtn(title: "Akıllı Telefon", press: () {}),
        SmartPhones(),
        TitleWithCustomBtn(title: "Laptop", press: () {}),
        Laptops(),
        TitleWithCustomBtn(title: "Akıllı TV", press: () {}),
        SmartTvs(),
      ],
    ));
  }
}
