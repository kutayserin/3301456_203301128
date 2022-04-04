import 'package:app1/screens/home/components/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:app1/constants.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            left: qPadding * 2, right: qPadding * 2, bottom: qPadding / 3),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/home_button.jpg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/user-icon.svg")),
          ],
        ));
  }
}
