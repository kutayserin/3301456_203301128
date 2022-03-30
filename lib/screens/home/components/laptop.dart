import 'package:app1/constants.dart';
import 'package:app1/screens/details/details_phone1.dart';
import 'package:app1/screens/details/details_phone2.dart';
import 'package:app1/screens/details/details_phone3.dart';
import 'package:app1/screens/details/details_screen1.dart';
import 'package:app1/screens/details/details_screen2.dart';
import 'package:app1/screens/details/details_screen3.dart';
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
          LaptopCard(
            image: "assets/images/lenovo1.jpg",
            title: "Lenovo IdeaPad 3",
            country: "Lenovo",
            price: 14000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen1()));
            },
          ),
          LaptopCard(
            image: "assets/images/msi1.jpg",
            title: "MSI Katana",
            country: "MSI",
            price: 17000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen2()));
            },
          ),
          LaptopCard(
            image: "assets/images/casper1.jpg",
            title: "Casper Excalibur",
            country: "Casper",
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

class LaptopCard extends StatelessWidget {
  const LaptopCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.press,
    required this.price,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.6,
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: kBackgroundColor.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(children: <Widget>[
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor,
                        ))
                  ]),
                ),
                Spacer(),
                Text('${price} TL', style: TextStyle(color: kPrimaryColor))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
