import 'package:flutter/material.dart';
import 'package:math_travel/themes/colors.dart';

class Paragraph extends StatelessWidget {
  String title;
  String content;
  double? size;
  Paragraph({
    super.key,
    required this.title,
    required this.content,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              color: black, fontSize: size ?? 20, fontFamily: 'GmarketSans'),
          children: [
            TextSpan(
                text: title,
                style: const TextStyle(fontWeight: FontWeight.w500)),
            const TextSpan(text: '\n'),
            TextSpan(
                text: content,
                style: const TextStyle(fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    );
  }
}

class ImageInsertedParagraph extends StatelessWidget {
  String title;
  String content;
  String imageRoute;
  double? size;

  ImageInsertedParagraph({
    super.key,
    required this.title,
    required this.content,
    required this.imageRoute,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  color: black,
                  fontSize: size ?? 20,
                  fontFamily: 'GmarketSans',
                  fontWeight: FontWeight.w500)),
          Image(
            image: AssetImage(imageRoute),
            height: 100,
            width: double.maxFinite,
            fit: BoxFit.fitWidth,
          ),
          Text(content,
              style: TextStyle(
                  color: black,
                  fontSize: size ?? 20,
                  fontFamily: 'GmarketSans',
                  fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}
