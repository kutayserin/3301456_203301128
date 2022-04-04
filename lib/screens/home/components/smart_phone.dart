import 'package:app1/screens/details/details_phone1.dart';
import 'package:app1/screens/details/details_phone2.dart';
import 'package:app1/screens/details/details_phone3.dart';
import 'package:app1/screens/home/components/product_card.dart';
import 'package:flutter/material.dart';

class SmartPhones extends StatelessWidget {
  const SmartPhones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
            image: 'assets/images/samsungphone.jpg',
            title: "Samsung Galaxy 22",
            brand: "Samsung",
            price: 13000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsPhone1()));
            },
          ),
          ProductCard(
            image: 'assets/images/iphone.jpg',
            title: "IPhone 12",
            brand: "Apple",
            price: 15000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsPhone2()));
            },
          ),
          ProductCard(
            image: 'assets/images/redmi.jpg',
            title: "Redmi Note 10 Pro",
            brand: "Xiaomi",
            price: 6000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsPhone3()));
            },
          ),
        ],
      ),
    );
  }
}
