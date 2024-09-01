import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:math_travel/pages/info/reports/about_ocha.dart';
import 'package:math_travel/pages/info/reports/history_of_jeju.dart';

import 'package:math_travel/widgets/box.dart';

import 'package:math_travel/pages/info/supporter_info.dart';
import 'package:math_travel/pages/info/reports/report_page_1.dart';
import 'package:math_travel/pages/info/reports/sechelin.dart';
import 'package:math_travel/pages/info/reports/promise_with_jeju.dart';
import 'package:math_travel/pages/info/reports/jeju_lan_stroy.dart';
// import 'package:math_travel/pages/info/reports/report_page_4.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 30,
              child: Box(
                padding: const EdgeInsets.all(20),
                child: ReportsSlider(),
              ),
            ),
            Flexible(
                child: Container(
              height: double.maxFinite,
            )),
            const Flexible(
              flex: 6,
              child: SupporterInfoButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class SupporterInfoButton extends StatelessWidget {
  const SupporterInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const SupporterInfoPage());
      },
      child: const Box(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('2024 수학여행 지원단'),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}

class ReportsSlider extends StatelessWidget {
  final List reportsInfo = [
    {
      'img': 'assets/report_thumbnail/제주와의약속.png',
      'route': const PromiseWithJeju(),
    },
    {
      'img': 'assets/report_thumbnail/세슐랭.png',
      'route': const Sechelin(),
    },
    {
      'img': 'assets/report_thumbnail/오설록에서구매하면좋을녹차제품추천.png',
      'route': const ReportPage1(),
    },
    {
      'img': 'assets/report_thumbnail/오설록에서보세요제주녹차이야기.png',
      'route': const ReportPage1(),
    },
    {
      'img': 'assets/report_thumbnail/녹차에대하여.png',
      'route': const AboutOcha(),
    },
    {
      'img': 'assets/report_thumbnail/제주문학의아름다움.png',
      'route': const ReportPage1(),
    },
    {
      'img': 'assets/report_thumbnail/제주어이야기.png',
      'route': const JejuLanStroy(),
    },
    {
      'img': 'assets/report_thumbnail/비행기에서보는물리.png',
      'route': const ReportPage1(),
    },
    {
      'img': 'assets/report_thumbnail/제주역사를한눈에.png',
      'route': HistoryOfJeju(),
    },
  ];

  ReportsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.maxFinite,
        enlargeCenterPage: true,
        aspectRatio: 10 / 7,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        viewportFraction: 0.8,
      ),
      items: reportsInfo
          .map(
            (item) => SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(item['route']);
                    },
                    child: Container(
                      width: double.maxFinite,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Stack(
                          fit: StackFit.passthrough,
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image(
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                              image: AssetImage(item['img']),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
