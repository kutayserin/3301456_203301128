import 'package:app1/constants.dart';
import 'package:app1/screens/details/details_tv1.dart';
import 'package:app1/screens/details/details_tv2.dart';
import 'package:app1/screens/details/details_tv3.dart';
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
          SmartTvCard(
            image: "assets/images/samsungtv.jpg",
            title: "Samsung 55Q70A",
            marka: "Samsung",
            price: 13600,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Detailstv1()));
            },
          ),
          SmartTvCard(
            image: "assets/images/lgtv.jpg",
            title: "LG OLED55B16LA",
            marka: "LG",
            price: 15998,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Detailstv2()));
            },
          ),
          SmartTvCard(
            image: "assets/images/vesteltv.jpg",
            title: "Vestel 43F9510",
            marka: "Vestel",
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

class SmartTvCard extends StatelessWidget {
  const SmartTvCard({
    Key? key,
    required this.press,
    required this.image,
    required this.title,
    required this.marka,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String marka;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: qPadding, top: qPadding / 2, bottom: qPadding * 2.5),
        width: size.width * 0.8,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(qPadding / 2),
              decoration: BoxDecoration(
                color: qBackGroundColor.withOpacity(0.2),
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
                          color: qPrimaryColor,
                        ))
                  ]),
                ),
                Spacer(),
                Text('${price} TL', style: TextStyle(color: qPrimaryColor))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
