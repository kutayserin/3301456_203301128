import 'package:app1/constants.dart';
import 'package:app1/screens/details/cart/shoppin_list.dart';
import 'package:app1/top_right_icon.dart';
import 'package:flutter/material.dart';
import 'body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../details/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: qPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: [TopRightIcon()],
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
