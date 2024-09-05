import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StoneGranpapa(),
    );
  }
}

class StoneGranpapa extends StatelessWidget {
  const StoneGranpapa({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: const SafeArea(
        child: Center(
          child: HowToDraw(),
        ),
      ),
    );
  }
}

final CarouselController controller = CarouselController();
List stonePapaInfo = [
  {
    'img': 'assets/report_assets/stone_granpapa/2024 수학여행 책자 (1).png',
    'text': '먼저 찻잔을 그려줍니다.'
  },
  {
    'img': 'assets/report_assets/stone_granpapa/2024 수학여행 책자 (2).png',
    'text': '그리고 모자를 씌워줘요.'
  },
  {
    'img': 'assets/report_assets/stone_granpapa/2024 수학여행 책자 (3).png',
    'text': '콩나물 두 개 그려주기!'
  },
  {
    'img': 'assets/report_assets/stone_granpapa/2024 수학여행 책자 (4).png',
    'text': '몸을 마저 그려주고~'
  },
  {
    'img': 'assets/report_assets/stone_granpapa/2024 수학여행 책자 (5).png',
    'text': '이제 얼굴을 꾸며주면..'
  },
  {
    'img': 'assets/report_assets/stone_granpapa/2024 수학여행 책자 (6).png',
    'text': '와.. 완성..?'
  },
];

class HowToDraw extends StatelessWidget {
  const HowToDraw({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CarouselSlider(
        items: stonePapaInfo.map((item) {
          return Column(
            children: [
              SizedBox(
                  width: width,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(item['img']),
                  )),
              SizedBox(height: height * 0.1),
              Text(
                item['text'],
                style: const TextStyle(fontSize: 20),
              )
            ],
          );
        }).toList(),
        options: CarouselOptions(
          height: height,
          viewportFraction: 1,
        ));
  }
}
