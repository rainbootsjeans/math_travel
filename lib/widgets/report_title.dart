import 'package:flutter/material.dart';
import 'package:math_travel/themes/colors.dart';

class ReportTitle extends StatelessWidget {
  String title;
  String boldTitle;
  ReportTitle({super.key, required this.title, required this.boldTitle});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
            color: blueShadow,
            fontSize: 22.5,
            fontWeight: FontWeight.w400,
            fontFamily: 'GmarketSans'),
        children: [
          TextSpan(text: '$title\n'),
          TextSpan(
              text: boldTitle,
              style: const TextStyle(fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
