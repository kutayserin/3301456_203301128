import 'package:app1/screens/details/details_screen1.dart';
import 'package:app1/screens/details/details_screen2.dart';
import 'package:app1/screens/details/details_screen3.dart';
import 'package:app1/screens/home/components/product_card.dart';
import 'package:flutter/material.dart';

class Laptops extends StatelessWidget {
  const Laptops({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
            image: "assets/images/lenovo1.jpg",
            title: "Lenovo IdeaPad 3",
            brand: "Lenovo",
            price: 14000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen1()));
            },
          ),
          ProductCard(
            image: "assets/images/msi1.jpg",
            title: "MSI Katana",
            brand: "MSI",
            price: 17000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen2()));
            },
          ),
          ProductCard(
            image: "assets/images/casper1.jpg",
            title: "Casper Excalibur",
            brand: "Casper",
            price: 14750,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen3()));
            },
          ),
        ],
      ),
    );
  }
}
