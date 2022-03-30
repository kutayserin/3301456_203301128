import 'package:app1/constants.dart';
import 'package:app1/constants.dart';
import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: title,
              style: TextStyle(
                  color: Color.fromARGB(255, 19, 37, 19),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            TextSpan(
                text: country,
                style: TextStyle(
                  fontSize: 30,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w300,
                ))
          ])),
          Spacer(),
          Text(
            "${price} TL",
            style: TextStyle(color: kPrimaryColor, fontSize: 24),
          )
        ],
      ),
    );
  }
}
