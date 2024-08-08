import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailInfoPage2 extends StatelessWidget {
  // final String img;
  // final String text;

  const DetailInfoPage2({
    super.key,
    // required this.img,
    // required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "2",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      // body: Center(
      //   child: Image.asset(img),
      // ),
    );
  }
}
