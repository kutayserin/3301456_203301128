import 'package:app1/constants.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'HomePage.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("İletişim"),
          backgroundColor: qPrimaryColor,
        ),
        drawer: NavigationDrawer(),
        backgroundColor: Colors.white,
        body: ContactUs(
          logo: AssetImage('assets/images/taha-kutay-serin.jpg'),
          email: 'tahakutays@gmail.com',
          companyName: "Kutay's Tech",
          phoneNumber: '+905077375779',
          dividerThickness: 2,
          website:
              'https://tf.selcuk.edu.tr/index.php?lang=tr&birim=033001&page=main',
          githubUserName: 'kutayserin',
          linkedinURL:
              'https://www.linkedin.com/in/taha-kutay-serin-606783238/',
          tagLine: 'Taha Kutay Serin',
          //twitterHandle: '',
          instagram: 'tahakutay_serin',
          cardColor: Colors.white,
          companyColor: qPrimaryColor,
          taglineColor: qBackGroundColor,
          textColor: qTextColor,
        ),
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: "Taha Kutay Serin",
          textColor: Colors.white,
          backgroundColor: qBackGroundColor,
          email: 'tahakutays@gmail.com',
        ),
      ),
    );
  }
}
