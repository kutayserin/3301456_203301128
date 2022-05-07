import 'package:flutter/material.dart';
import 'package:app1/constants.dart';

class TitleWithCustomBtn extends StatelessWidget {
  const TitleWithCustomBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: qPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderLine(text: title),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Text(text,
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: qPrimaryColor,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600)));
  }
}
