// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:math_travel/pages/reports/info1.dart';
import 'package:math_travel/pages/reports/info2.dart';
import 'package:math_travel/pages/reports/info3.dart';
import 'package:math_travel/pages/supporter_info.dart';
import 'package:math_travel/widgets/box.dart';

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
              child: SupporterInfo(),
            ),
          ],
        ),
      ),
    );
  }
}

class SupporterInfo extends StatelessWidget {
  const SupporterInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const SupporterInfo());
      },
      child: const Box(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
  final List<Map<String, dynamic>> reportsInfo = [
    {
      'img': 'assets/report_images/example_image_1.png',
      'desc': 'BLT',
      'route': const DetailInfoPage(),
    },
    {
      'img': 'assets/report_images/example_image_2.png',
      'desc': '콰트로',
      'route': const DetailInfoPage2(),
    },
    {
      'img': 'assets/report_images/example_image_3.png',
      'desc': '신',
      'route': const DetailInfoPage3(),
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
          .map((item) => SizedBox(
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
                        child: Image(
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.center,
                            image: AssetImage(item['img'])),
                      ),
                    ),
                    Text(item['desc'])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
