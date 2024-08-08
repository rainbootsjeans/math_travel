import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailInfoPage extends StatelessWidget {
  // final String img;
  // final String text;

  const DetailInfoPage({
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
          "1",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      // body: Center(
      //   //child: Image.asset(img),
      // ),
    );
  }
}
