import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportPage2 extends StatelessWidget {
  const ReportPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(),
        ),
      ),
    );
  }
}
