import 'package:flutter/material.dart';
import 'package:app1/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: qPadding * 2.5),
      height: 140,
      padding: EdgeInsets.only(
        left: qPadding,
        right: qPadding,
        bottom: 25 + qPadding,
      ),
      decoration: BoxDecoration(
          color: qPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
          )),
      child: Row(
        children: <Widget>[
          Text('Hoşgeldiniz,Kutays',
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              "assets/images/ktechlogo.jpg",
            ),
          ),
        ],
      ),
    );
  }
}
