import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
            const Flexible(
              flex: 31,
              child: Box(
                child: Text('대충 설문 링크'),
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
                  child: Text('스케줄보러가기'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
