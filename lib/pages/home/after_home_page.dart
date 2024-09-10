import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/themes/colors.dart';

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
            const Flexible(
              flex: 5,
              child: Box(
                child: Text('스케줄보러가기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
