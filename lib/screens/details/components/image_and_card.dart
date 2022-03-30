import 'package:flutter/material.dart';
import 'package:app1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIconsCard extends StatelessWidget {
  const ImageAndIconsCard({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            height: size.height * 0.45,
            width: size.width * 1,
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
