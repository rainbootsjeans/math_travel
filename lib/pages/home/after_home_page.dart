import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:math_travel/widgets/box.dart';
// import 'package:math_travel/themes/colors.dart';

import 'package:math_travel/pages/home/schedule/schedule_page.dart';

class AfterHomePage extends StatelessWidget {
  const AfterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Flexible(
              flex: 31,
              child: Box(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('설문조사 하러가기'),
                          GestureDetector(
                            onTap: () {
                              launchUrl(Uri.parse(
                                  'https://forms.gle/ZLjnnoHY9YR8pX3r6'));
                            },
                            child: const Image(
                                // width: double.maxFinite,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/QRcode.png')),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Flexible(child: Container(height: double.maxFinite)),
            Flexible(
              flex: 5,
              child: GestureDetector(
                onTap: () {
                  Get.to(const SchedulePage());
                },
                child: const Box(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('일정 보러가기'),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
