import 'package:flutter/material.dart';
import 'package:app1/constants.dart';

class DescImageCard extends StatelessWidget {
  const DescImageCard({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: qPadding),
      child: Column(
        children: [
          Container(
            height: size.height * 0.45,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                    image: AssetImage(image))),
          ),
        ],
      ),
    );
  }
}
