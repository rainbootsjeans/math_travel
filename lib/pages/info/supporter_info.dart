import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/widgets/supporters_introduce.dart';

class SupporterInfoPage extends StatelessWidget {
  const SupporterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SupportersIntroduce(
                  imageRoute: 'assets/QRcode.png',
                  name: '김철수',
                  role: '자료조사',
                  desc: '안녕하세요 김철수입니다.',
                ),
                SupportersIntroduce(
                  imageRoute: 'assets/QRcode.png',
                  name: '김철수',
                  role: '자료조사',
                  desc: '안녕하세요 김철수입니다.',
                ),
                SupportersIntroduce(
                  imageRoute: 'assets/QRcode.png',
                  name: '김철수',
                  role: '자료조사',
                  desc: '안녕하세요 김철수입니다.',
                ),
                SupportersIntroduce(
                  imageRoute: 'assets/QRcode.png',
                  name: '김철수',
                  role: '자료조사',
                  desc: '안녕하세요 김철수입니다.',
                ),
                SupportersIntroduce(
                  imageRoute: 'assets/QRcode.png',
                  name: '김철수',
                  role: '자료조사',
                  desc: '안녕하세요 김철수입니다.',
                ),
                SupportersIntroduce(
                  imageRoute: 'assets/QRcode.png',
                  name: '김철수',
                  role: '자료조사',
                  desc: '안녕하세요 김철수입니다.',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
