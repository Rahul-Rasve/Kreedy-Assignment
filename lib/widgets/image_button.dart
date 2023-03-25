// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  double width;
  String imagePath;
  VoidCallback onTap;

  ImageButton({
    super.key,
    required this.width,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Material(
        color: Colors.grey[500],
        type: MaterialType.button,
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: width / 10,
            width: width / 3.5,
            margin: EdgeInsets.symmetric(
              vertical: width / 40,
            ),
            padding: EdgeInsets.symmetric(
              vertical: width / 80,
              horizontal: width / 80,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
