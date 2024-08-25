import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/controllers/schedule_controller.dart';

import 'package:math_travel/pages/home/schedule/schedule_tapbar.dart';
import 'package:math_travel/themes/colors.dart';

ScheduleController scheduleController = Get.put(ScheduleController());

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ScheduleTapbar(
              initialIndex: scheduleController.getTodaysDay(),
            ),
          ),
        ),
      ),
    );
  }
}
