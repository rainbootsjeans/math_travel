// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
                child: CarouselDemo(),
              ),
            ),
            Flexible(
                child: Container(
              height: double.maxFinite,
            )),
            const Flexible(
              flex: 6,
              child: Box(
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
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List reportsInfo = [
    {'img': 'assets/report_images/example_image_1.png', 'desc': 'BLT'},
    {'img': 'assets/report_images/example_image_2.png', 'desc': '콰트로'},
    {'img': 'assets/report_images/example_image_3.png', 'desc': '신'},
  ];

  CarouselDemo({super.key});

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
                    Container(
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
                    Text(item['desc'])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
