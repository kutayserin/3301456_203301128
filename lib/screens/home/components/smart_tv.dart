import 'package:app1/screens/details/details_tv1.dart';
import 'package:app1/screens/details/details_tv2.dart';
import 'package:app1/screens/details/details_tv3.dart';
import 'package:app1/screens/home/components/product_card.dart';
import 'package:flutter/material.dart';

class SmartTvs extends StatelessWidget {
  const SmartTvs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
            image: "assets/images/samsungtv.jpg",
            title: "Samsung 55Q70A",
            brand: "Samsung",
            price: 13600,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Detailstv1()));
            },
          ),
          ProductCard(
            image: "assets/images/lgtv.jpg",
            title: "LG OLED55B16LA",
            brand: "LG",
            price: 15998,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Detailstv2()));
            },
          ),
          ProductCard(
            image: "assets/images/vesteltv.jpg",
            title: "Vestel 43F9510",
            brand: "Vestel",
            price: 4946,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Detailstv3()));
            },
          ),
        ],
      ),
    );
  }
}
