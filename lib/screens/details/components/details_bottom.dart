import 'package:app1/constants.dart';
import 'package:flutter/material.dart';

class DetailsBottom extends StatelessWidget {
  const DetailsBottom({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Container(
          width: size.width / 2,
          height: size.height / 10,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              ),
              backgroundColor: qPrimaryColor,
            ),
            onPressed: () {},
            child: Text(
              "Satın Al",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Expanded(
            child: TextButton(
          onPressed: () {},
          child: Text("Sepete Ekle",
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ))
      ],
    );
  }
}
