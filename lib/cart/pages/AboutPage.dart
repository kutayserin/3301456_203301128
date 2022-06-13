import 'package:app1/cart/pages/HomePage.dart';
import 'package:app1/constants.dart';
import 'package:flutter/material.dart';
import 'package:link_text/link_text.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  final String _text =
      'Projenin kodları: https://github.com/kutayserin/3301456_203301128';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkında"),
        backgroundColor: qPrimaryColor,
      ),
      drawer: NavigationDrawer(),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              "Kutay's Tech",
              style: TextStyle(
                  color: qPrimaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Image.asset("assets/images/ktechlogo.jpg"),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Center(
              child: LinkText(
                _text,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Text("Hazırlayan: Taha Kutay Serin"),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 120),
            child: Flexible(
              child: Row(
                children: [
                  Text(
                    "Tüm hakları saklıdır",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400),
                  ),
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
