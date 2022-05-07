import 'package:flutter/material.dart';

import 'screens/details/cart/shoppin_list.dart';

class TopRightIcon extends StatelessWidget {
  const TopRightIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 45,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ShoppingList()));
      },
      icon: Image.asset("assets/icons/cart.png"),
    );
  }
}
