import 'package:app1/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
import 'desc_image.dart';

class DetailBody extends StatelessWidget {
  const DetailBody(
      {Key? key,
      required this.image,
      required this.title,
      required this.brand,
      required this.price})
      : super(key: key);

  final String image;
  final String title;
  final String brand;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        TitleAndPrice(
          title: title,
          brand: brand,
          price: price,
        ),
        DescImageCard(
          size: size,
          image: image,
        ),
      ]),
    );
  }
}
