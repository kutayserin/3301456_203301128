import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final GestureTapCallback? onTap;

  CustomButton({required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple)),
      onPressed: onTap,
      child: Text(name),
    );
  }
}
