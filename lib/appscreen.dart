import 'package:flutter/material.dart';
import 'package:app1/constants.dart';
import 'package:app1/screens/home/components/home_screen.dart';

class AppScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: qPrimaryColor),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: qTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
