// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.size,
    required this.imagePath,
  });

  final Size size;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 2,
      width: size.width / 2,
      padding: EdgeInsets.all(size.width / 15),
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        '$imagePath',
      ),
    );
  }
}
