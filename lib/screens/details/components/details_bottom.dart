import 'package:app1/constants.dart';
import 'package:flutter/material.dart';

class DetailsBottom extends StatelessWidget {
  const DetailsBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 80,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              ),
              backgroundColor: kPrimaryColor,
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
