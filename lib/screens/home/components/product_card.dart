import 'package:app1/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.brand,
    required this.press,
    required this.price,
  }) : super(key: key);

  final String image, title, brand;
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
        width: size.width * 0.6,
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
            ),
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
                        text: "$brand".toUpperCase(),
                        style: TextStyle(
                          color: qPrimaryColor,
                        ))
                  ]),
                ),
                Spacer(),
                Text('$price TL', style: TextStyle(color: qPrimaryColor))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}