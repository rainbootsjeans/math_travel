import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const Flexible(child: SizedBox(height: double.maxFinite)),
            Flexible(flex: 35, child: Center(child: CarouselDemo())),
            const Flexible(child: SizedBox(height: double.maxFinite)),
          ],
        ),
      ),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List<Map<String, dynamic>> info = [
    {
      'img': 'assets/report_assets/ticket_image/ticket1.png',
      'desc': '1팀',
    },
    {
      'img': 'assets/report_assets/ticket_image/ticket2.png',
      'desc': '2팀',
    },
    {
      'img': 'assets/report_assets/ticket_image/ticket3.png',
      'desc': '3팀',
    },
  ];

  CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // final sizeX = MediaQuery.of(context).size.width;
    final CarouselController controller = CarouselController();
    // final sizeY = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            // aspectRatio: 10 / 7,
            aspectRatio: 1 / 2,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 0.65,
          ),
          items: info
              .map((item) => SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      item['img'],
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ))
              .toList(),
        ),
        Positioned(
          left: 35,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              controller.previousPage();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              color: Colors.transparent, // 이 부분은 필요에 따라 조정 가능
              child: const Icon(Icons.arrow_back, size: 40),
            ),
          ),
        ),
        Positioned(
          right: 35,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              controller.nextPage();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              color: Colors.transparent,
              child: const Icon(Icons.arrow_forward, size: 40),
            ),
          ),
        ),
      ],
    );
  }
}
