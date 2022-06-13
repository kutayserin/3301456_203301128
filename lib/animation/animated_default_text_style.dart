import 'package:app1/constants.dart';
import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  @override
  _TextAnimationState createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  bool selected = false;
  TextStyle textStyle1 = TextStyle(
    color: qBackGroundColor,
    fontSize: 20,
    letterSpacing: 2,
    fontWeight: FontWeight.w900,
  );
  TextStyle textStyle2 = TextStyle(
    color: qPrimaryColor,
    fontSize: 30,
    fontWeight: FontWeight.w300,
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeTextStyle,
      child: AnimatedDefaultTextStyle(
        child: Text("Kutay's Tech"),
        style: selected ? textStyle1 : textStyle2,
        duration: Duration(seconds: 1),
      ),
    );
  }

  changeTextStyle() {
    setState(() {
      selected = !selected;
    });
  }
}
