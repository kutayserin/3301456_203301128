import 'package:app1/constants.dart';

import 'package:flutter/material.dart';

import '../../animation/animated_default_text_style.dart';
import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextAnimation(),
        elevation: 1,
        shadowColor: qPrimaryColor,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
      ),
      body: Body(),
    );
  }
}
