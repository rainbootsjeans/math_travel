import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:math_travel/widgets/box.dart';

import 'package:math_travel/pages/info/supporter_info.dart';
import 'package:math_travel/pages/info/reports/report_page_1.dart';
import 'package:math_travel/pages/info/reports/report_page_2.dart';
import 'package:math_travel/pages/info/reports/report_page_3.dart';
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
      'img': 'assets/report_images/example_image_1.png',
      'desc': 'BLT',
      'route': const ReportPage1(),
    },
    {
      'img': 'assets/report_images/example_image_2.png',
      'desc': '콰트로치즈와퍼',
      'route': const ReportPage2(),
    },
    {
      'img': 'assets/report_images/example_image_3.png',
      'desc': '신',
      'route': const ReportPage3(),
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
                              Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['desc'],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text(
                                        '김창섭',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
