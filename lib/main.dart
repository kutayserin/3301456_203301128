import 'package:app1/constants.dart';
import 'package:app1/screens/home/components/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  String nameSur = '';
  String password = '';

  void control() {
    final snackBar =
        SnackBar(content: const Text('Hatalı kullanıcı adı ya da şifre'));

    List<String> data = [
      "admin",
      "123",
    ];
    data.add(nameSur);
    data.add(password);
    if ((data[0] == nameSur) && (data[1] == password)) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    void _nameSurSave(String text) {
      setState(() {
        nameSur = text;
      });
    }

    void _passwordSave(String text) {
      setState(() {
        password = text;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(36),
              bottomLeft: Radius.circular(36)),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: qPrimaryColor,
        title: Text(
          "Kutay's Tech",
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(400),
              child: Image.asset(
                "assets/images/ktechlogo.jpg",
                height: 247,
                width: 300,
              ),
            ),
            Padding(padding: const EdgeInsets.all(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: (text) {
                  _nameSurSave(text);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kullanıcı Adı',
                    hintText: 'Kullanıcı adınızı giriniz'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: (text) {
                  _passwordSave(text);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                    hintText: 'Şifrenizi giriniz'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: qPrimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  control();
                },
                child: Text(
                  'Giriş Yap',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
