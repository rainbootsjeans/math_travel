import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/paragraph.dart';
import 'package:math_travel/widgets/report_title.dart';

class PromiseWithJeju extends StatelessWidget {
  const PromiseWithJeju({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReportTitle(title: '새로운 \n제주 여행 문화를 위해,', boldTitle: '제주와의 약속'),
                SizedBox(height: height * 0.05),
                Paragraph(
                    size: 17.5,
                    title: '\'제주와의 약속\' 캠페인이란?',
                    content:
                        '\n새로운 제주 여행 문화를 선도하기 위한 도민+관광사업체+관광객이 함께하는 협력 실천 캠페인\n\n\n'),
                Paragraph(
                    size: 17.5,
                    title: '\'제주와의 약속\' 캠페인의 목적',
                    content:
                        '\n환경 사회 경제적 책임을 갖는 ‘지속 가능한 여행’의 공감대를 확산시킴과 동시에 제주 관광에 대한 신뢰를 회복하고 만족도를 높이는 새로운 제주 관광 비전을 알림.\n\n\n'),
                Paragraph(
                    size: 17.5,
                    title: '\'제주와의 약속\' 캠페인의 메시지',
                    content:
                        '\n- 보전의 약속\n제주의 자연환경을 우리의 후손에게 그대로 전해주기 위한 약속\n\n - 공존의 약속\n제주도민과 함께 아름다운 제주를 조화롭게 만들어가기 위한 약속\n\n - 존중의 약속\n제주의 고유문화를 지켜나가기 위한 약속\n\n\n'),
                Paragraph(
                    size: 17.5,
                    title: '우리는 어떤 태도를 지녀야 할까?',
                    content:
                        '\n- 제주의 아름다운 자연을 보전하며 여행하기\n\n- 로컬푸드, 로컬여행 등 제주의 지역 상품을 적극적으로 체험하기\n\n- 제주의 고유한 문화를 경험하고 활동하기\n\n\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
