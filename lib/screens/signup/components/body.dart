import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../services/auth/auth_methods.dart';
import '../../login/login_screen.dart';
import '../../welcome/welcome_screen.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  String user_name = "";
  String user_email = "";
  String user_password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            "KAYIT OL",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            "assets/images/ktechlogo.jpg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Ad Soyad",
            onChanged: (value) {
              user_name = value;
            },
          ),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value) {
              user_email = value;
            },
          ),
          RoundedPasswordField(
            onChanged: (value) {
              user_password = value;
            },
          ),
          RoundedButton(
              text: "KAYIT OL",
              press: () {
                context
                    .read<FlutterFireAuthService>()
                    .createAccount(user_name, user_email, user_password);
              }),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
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
          //OrDivider(),
          /*
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
            */
        ],
      ),
    );
  }
}
