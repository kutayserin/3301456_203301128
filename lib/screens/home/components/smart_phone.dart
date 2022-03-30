import 'package:app1/constants.dart';
import 'package:app1/screens/details/details_phone1.dart';
import 'package:app1/screens/details/details_phone2.dart';
import 'package:app1/screens/details/details_phone3.dart';
import 'package:app1/screens/details/details_screen1.dart';
import 'package:app1/screens/details/details_screen2.dart';
import 'package:app1/screens/details/details_screen3.dart';
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
          SmartPhoneCard(
            image: 'assets/images/samsungphone.jpg',
            title: "Samsung Galaxy 22",
            marka: "Samsung",
            price: 13000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsPhone1()));
            },
          ),
          SmartPhoneCard(
            image: 'assets/images/iphone.jpg',
            title: "IPhone 12",
            marka: "Apple",
            price: 15000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsPhone2()));
            },
          ),
          SmartPhoneCard(
            image: 'assets/images/redmi.jpg',
            title: "Redmi Note 10 Pro",
            marka: "Xiaomi",
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

class SmartPhoneCard extends StatelessWidget {
  const SmartPhoneCard({
    Key? key,
    required this.image,
    required this.title,
    required this.marka,
    required this.press,
    required this.price,
  }) : super(key: key);

  final String image, title, marka;
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
                        text: "$marka".toUpperCase(),
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
