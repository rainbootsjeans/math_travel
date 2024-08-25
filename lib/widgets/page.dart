import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';

class NormalPage extends StatelessWidget {
  String imageRoute;
  String title;
  String subTitle;
  List<Widget> children;
  NormalPage({
    super.key,
    required this.imageRoute,
    required this.title,
    required this.subTitle,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: white,
      child: Scaffold(
        backgroundColor: white,
        // Q. Stack 왜 씀? A.SliverAppbar 못써먹겠음
        body: SafeArea(
          child: Stack(
            children: [
              // 배경
              Container(
                height: height * 0.432,
                padding: EdgeInsets.only(top: height * 0.01),
                child: Image(
                  image: AssetImage(imageRoute),
                  alignment: Alignment.bottomCenter,
                  width: width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              // 스크롤
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.378,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: width,
                        height: height * 0.98,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              // 굳이 이 위젯 쓸 필요가 있었을까?
                              text: TextSpan(
                                style: const TextStyle(color: black),
                                children: [
                                  TextSpan(
                                      text: title,
                                      style: const TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600)),
                                  const TextSpan(
                                      text: '\n',
                                      style: TextStyle(fontSize: 10)),
                                  TextSpan(
                                      text: subTitle,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(221, 90, 90, 90)))
                                ],
                              ),
                            ),
                            ...children
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // 대체앱바
              Container(
                height: height * 0.05,
                width: width,
                color: white,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: GestureDetector(
                        child: const Icon(Icons.arrow_back_ios),
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    const SizedBox()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
