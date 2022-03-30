// ignore_for_file: deprecated_member_

import 'package:app1/screens/home/components/smart_phone.dart';
import 'package:flutter/material.dart';
import 'smart_tv.dart';
import 'header.dart';
import 'laptop.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Header(),
        TitleWithMoreBtn(title: "Akıllı Telefon", press: () {}),
        SmartPhones(),
        TitleWithMoreBtn(title: "Laptop", press: () {}),
        Laptops(),
        TitleWithMoreBtn(
          title: "Akıllı TV",
          press: () {},
        ),
        SmartTvs(),
      ],
    ));
  }
}
