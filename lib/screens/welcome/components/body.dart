import 'package:app1/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../components/rounded_button.dart';
import '../../login/login_screen.dart';
import '../../signup/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../welcome_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return WelcomeScreen();
    }
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Türkiye'nin en kaliteli teknoloji mağazasına,",
            style: GoogleFonts.jost(
                textStyle: TextStyle(fontSize: 20), color: qTextColor),
            //TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: ),
          ),
          SizedBox(height: size.height * 0.03),
          Text("Hosgeldiniz",
              style: GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 45), color: qPrimaryColor)),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            "assets/images/ktechlogo.jpg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "Giriş Yap",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "Kayıt Ol",
            color: qBackGroundColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
