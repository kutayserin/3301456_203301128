import 'package:app1/constants.dart';
import 'package:flutter/material.dart';
import 'body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
