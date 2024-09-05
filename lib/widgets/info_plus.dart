import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/paragraph.dart';

class InfoPlus extends StatelessWidget {
  String name;
  String info;
  InfoPlus({super.key, required this.name, required this.info});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              width: width * 0.8,
              constraints: BoxConstraints(maxHeight: height * 0.7),
              color: white,
              child: SingleChildScrollView(
                  child:
                      Paragraph(size: 12.5, title: name, content: '\n$info')),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                width: width * 0.8,
                height: height * 0.05,
                color: const Color.fromARGB(255, 250, 250, 250),
                child: const Center(
                  child: Text(
                    '확인',
                    style: TextStyle(
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'GmarketSans',
                      decoration: TextDecoration.none,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
