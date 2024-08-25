import 'package:flutter/material.dart';
import 'package:math_travel/themes/colors.dart';

class Paragraph extends StatelessWidget {
  String title;
  String content;

  Paragraph({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
          text: TextSpan(
              style: const TextStyle(color: black, fontSize: 20),
              children: [
            TextSpan(
                text: title,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            const TextSpan(text: '\n'),
            TextSpan(
                text: content,
                style: const TextStyle(fontWeight: FontWeight.w300)),
          ])),
    );
  }
}
