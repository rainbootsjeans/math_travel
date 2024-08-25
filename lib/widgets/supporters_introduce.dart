import 'package:flutter/material.dart';
import 'package:math_travel/themes/colors.dart';

class SupportersIntroduce extends StatelessWidget {
  String imageRoute;
  String name;
  String role;
  String desc;
  SupportersIntroduce({
    super.key,
    required this.imageRoute,
    required this.name,
    required this.role,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 0.1))),
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(
        minHeight: height * 0.2,
      ),
      width: double.maxFinite,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  height: height * 0.15,
                  child: Image(
                    image: AssetImage(imageRoute),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: height * 0.15,
                  child: RichText(
                    text: TextSpan(
                      text: name,
                      style: const TextStyle(color: black),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n$role',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(desc),
            ],
          )
        ],
      ),
    );
  }
}
