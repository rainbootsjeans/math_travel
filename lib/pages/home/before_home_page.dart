import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/widgets/box.dart';

import 'package:math_travel/pages/home/schedule/schedule_page.dart';

class BeforeHomePage extends StatelessWidget {
  const BeforeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Flexible(
              flex: 31,
              child: Box(
                child: Center(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: Obx(() => Text(
                            scheduleController.schedule().timeRemaing,
                            style: TextStyle(
                                fontSize: width / 6,
                                fontWeight: FontWeight.w900),
                          ))),
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
