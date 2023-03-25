// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    super.key,
    required this.indentValue,
    required this.endIndentValue,
  });
  final double? indentValue;
  final double? endIndentValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        thickness: 3,
        color: Colors.grey[400],
        indent: indentValue,
        endIndent: endIndentValue,
      ),
    );
  }
}
