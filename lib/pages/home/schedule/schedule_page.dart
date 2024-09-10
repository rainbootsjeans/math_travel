import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/controllers/schedule_controller.dart';

import 'package:math_travel/pages/home/schedule/schedule_tapbar.dart';

ScheduleController scheduleController = Get.put(ScheduleController());

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: const Color.fromARGB(255, 254, 247, 255),
      body: SafeArea(
        child: Center(
          child: ScheduleTapbar(
            initialIndex: scheduleController.getTodaysDay(),
          ),
        ),
      ),
    );
  }
}
