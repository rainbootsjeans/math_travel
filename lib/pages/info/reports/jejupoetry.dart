import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:math_travel/pages/info/reports/jejunovel.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: poetrypage(),
//   ));
// }

class poetrypage extends StatelessWidget {
  const poetrypage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Container(
                // color: Color.fromARGB(255, 187, 217, 241),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/report_assets/korean/poetrybackground.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        '제주, 4월',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 100),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '정일근',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: jejupoetry(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/report_assets/korean/hanla.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Text(
                              ' 제주, 4월 작품설명',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 155, 94, 2)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '정우성',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: AnalyzedInfo()),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: sizeX * 0.6,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12,
                            ),
                            child: const Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '제주와 관련된 문학에\n대해 더 궁금한사람',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    '▶',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(const JejuNewsPage());
                            },
                            child: Container(
                              width: sizeX * 0.3,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black12,
                              ),
                              child: const Center(
                                  child: Text(
                                '제주 소설\n보러가기',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 10,
                top: -1180,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    color: Colors.transparent,
                    child: const Icon(Icons.arrow_back, size: 40),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class jejupoetry extends StatelessWidget {
  const jejupoetry({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeX * 0.8,
      child: const Align(
        alignment: Alignment.topCenter,
        child: Text(
          '봄밤에 휘파람새 우는 소리 듣는다\n휫 휫 훗훗… 누군가 슬픈 꽃 같은 입술로\n조심스레 휘파람 부는 것 같다\n\n제주 이모에게 그런 휘파람 불어주던\n눈빛 깊은 젊은 남자 있었다\n4월이었고 이모에게는 첫사랑이었다\n단 한 번의 휘파람 단 한 번의 사랑\n그리고 서러운 세월 하얗게 흘러갔다\n\n제주 이모 가는귀먹은 지 오래지만\n4월에 우는 휘파람새 소리는 다 듣는다\n밤에 휘파람새 소리는 다 듣는다\n\n밤에 휘파람새 찾아와 울고\n서툴게 서툴게 따라 부는 이모의 휘파람 소리\n그런 밤에 약속처럼 봄비 봄비 내린다',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class AnalyzedInfo extends StatelessWidget {
  final List<Map<String, dynamic>> analyzedinfo = [
    {
      'title': const Text(
        '간단한 작품 소개!',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w900, color: Colors.black),
      ),
      'desc': const Text(
        '1948년 4월 3일 제주에서 일어난 제주 4.3 사건을 바탕으로 지어진 시로, 당시 이 사건으로 인해 벌어진 학살의 현장을 잊을 수없는 기억으로 남아 비유적으로 작성한 것입니다.',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w200, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    },
    {
      'title': const Text(
        '제주 4.3 사건이란?',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w900, color: Colors.black),
      ),
      'desc': const Text(
        '한국의 해방 이후 사회주의 세력과 우파 세력의 갈등으로 인해 야기되어 남로당과 국가의 토벌대가 무력 충돌 및 진압과정에 주민들이 학살당한 사건입니다.',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w200, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    },
    {
      'title': const Text(
        '시의 주요 해석',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w900, color: Colors.black),
      ),
      'desc': const Text(
        '시는 제주 4.3 사건을 당시 환경과 자연물에 빗대어 표현한 부분이 많은 시입니다. 시의 주요 용어인 휘파람은 4.3 사건의 시련을 이겨낸 극복을 의미하여 그런 아픔이 있었음에도 불구하고 결국에는 이겨내어 잊어서는 안 될 기억이라는 것을 강조한다고 볼 수 있습니다.',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w200, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    },
  ];

  AnalyzedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();

    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 400, // 기본 높이 설정
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 0.8,
          ),
          items: analyzedinfo.map((item) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // 텍스트의 길이에 따라 동적으로 높이 설정
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight, // 기본 높이
                    maxHeight: double.infinity, // 무제한 확장 가능
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: item['title'],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: item['desc'],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 15,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              controller.previousPage();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              color: Colors.transparent,
              child: const Icon(Icons.arrow_back, size: 40),
            ),
          ),
        ),
        Positioned(
          right: 15,
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
