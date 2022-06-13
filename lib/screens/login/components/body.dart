import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../services/auth/auth_methods.dart';

class Body extends StatelessWidget {
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
            "GİRİŞ YAP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            "assets/images/ktechlogo.jpg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
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
            text: "GİRİŞ YAP",
            press: () {
              context
                  .read<FlutterFireAuthService>()
                  .logIn(user_email, user_password, context);
              print(user_email + user_password);
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.popAndPushNamed(context, "signup");
            },
          ),
        ],
      ),
    );
  }
}
