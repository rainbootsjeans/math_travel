import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/pages/info/reports/sechelin.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class MapInfo5 extends StatelessWidget {
  const MapInfo5({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return NormalPage(
        imageRoute: 'assets/map_images/월정리해수욕장.png',
        title: '월정리 해수욕장',
        subTitle: '달이 머물다가는 아름다운 해변',
        children: [
          Paragraph(
              title: '소개',
              content:
                  '월정리 해수욕장은 에메랄드빛 바다와 고운 백사장을 자랑하는 해변입니다.\n\n\'월정리\'라는 이름은 \'달이 머뭄\'을 의미하며, 한 폭의 그림같은 해변을 밝은 달이 빛추는 모습에서 유래되었습니다.\n\n'),
          Paragraph(
              title: '식사',
              content:
                  '해안선을 따라 늘어선 각종 카페와 식당들 또한 월정리만의 독특한 매력이라 할 수 있겠습니다.\n\n'),
          SizedBox(
            height: width * 0.324,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const Sechelin());
                    },
                    child: Container(
                      width: width * 0.324,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Image(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                        image: AssetImage('assets/report_thumbnail/세슐랭.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.0324),
                  Container(
                    decoration: const BoxDecoration(color: black),
                    width: 1,
                    height: width * 0.324 * 0.8,
                  ),
                  const Text(
                    '사진 출처 : https://visitjeju.net/kr/detail/view?contentsid=CONT_000000000500496',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                  ),
                  SizedBox(width: width * 0.0324),
                  Row(
                      children: info
                          .asMap()
                          .map((key, value) {
                            return MapEntry(
                                key,
                                Row(
                                  children: [
                                    Restaurant(
                                      name: value['name'],
                                      imageRoute: value['thumImage'],
                                      star: double.parse(((value['star'][0] +
                                                  value['star'][1] +
                                                  value['star'][2]) /
                                              3)
                                          .toStringAsFixed(1)),
                                      route: RestaurantInfo(
                                        initialIndex: key,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.0162),
                                  ],
                                ));
                          })
                          .values
                          .toList())
                ],
              ),
            ),
          )
        ]);
  }
}

List<Map> info = [
  {
    //
    'thumImage': 'assets/map_images/월정리식당/달이뜨는식당.png',
    'mapImage': 'assets/map_images/월정리식당/달이뜨는식당위치.png',
    'mapURL':
        'https://map.naver.com/p/search/%EB%8B%AC%EC%9D%B4%EB%9C%A8%EB%8A%94%EC%8B%9D%EB%8B%B9/place/1019541842?c=15.00,0,0,0,dh&placePath=%3Fentry%253Dbmp',
    'star': [5.0, 4.0, 5.0],
    'name': '달이 뜨는 식탁',
    'address': '제주특별자치도 제주시 구좌읍 월정리 885',
    'menus': [
      {
        'name': '흑돼지 돈까스',
        'price': '17,000원',
        'desc': '3일간 진공저온 숙성을 통해 탄생한 돈까스',
      },
      {
        'name': '딱새우 로제파스타',
        'price': '17,000원',
        'desc': '살짝 매콤한 로제파스타로 다양한 새우가 들어있습니다.',
      },
      {
        'name': '마늘 알리오올리오',
        'price': '17,000원',
        'desc': '제주 구좌 마늘이 아낌없이 들어간 오일파스타로 풍미가 깊은 요리입니다.',
      }
    ],
    '출처':
        '@wwwwj114, 2024 6월 20일, \nURL : https://www.instagram.com/wwwwj114/p/C8bGOSSSzXX/?hl=ko'
  },
  {
    //
    'thumImage': 'assets/map_images/월정리식당/머문카페.png',
    'mapImage': 'assets/map_images/월정리식당/머문카페위치.png',
    'mapURL':
        'https://map.naver.com/p/search/%EB%A8%B8%EB%AC%B8%EC%B9%B4%ED%8E%98/place/1031141837?c=16.35,0,0,0,dh&placePath=%3Fentry%253Dbmp',
    'star': [5.0, 5.0, 4.0],
    'name': '머문카페',
    'address': '제주특별자치도 제주시 구좌읍 월정리 540 2층',
    'menus': [
      {
        'name': '당근도넛',
        'price': '6,000원',
        'desc': '당근필링이 들어간 도넛',
      },
      {
        'name': '감자빵',
        'price': '6,500원',
        'desc': '감자의 맛을 듬뿍 느낄 수 있는 고소한 빵',
      },
      {
        'name': '구좌당근빵',
        'price': '7,000원',
        'desc': '쫄긴한 떡이 들어간 당근맛 빵',
      }
    ],
    '출처':
        '@moumoon_in_jeju, 2024 5월 5일, \nURL : https://www.instagram.com/moumoon_in_jeju/p/C6lK1UlpDig/'
  },
];

// 이거랑 RestaurantInfo도 widget으로 만들었어야 좀 더 깔끔할텐데
class Restaurant extends StatelessWidget {
  String name;
  double star;
  String imageRoute;
  Widget route;
  Restaurant({
    super.key,
    required this.name,
    required this.star,
    required this.imageRoute,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Get.to(route);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: width * 0.324,
        height: width * 0.324,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ], borderRadius: BorderRadius.circular(10), color: white),
        child: Column(
          children: [
            Flexible(
                flex: 5,
                child: SizedBox(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(imageRoute),
                  ),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  padding: const EdgeInsets.only(left: 12.5, top: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: width * 0.324 / 10,
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: width * 0.324 / 20,
                          ),
                          Text(
                            ' $star',
                            style: TextStyle(
                                fontSize: width * 0.324 / 20,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class RestaurantInfo extends StatelessWidget {
  int initialIndex;
  RestaurantInfo({super.key, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Map recievedInfo = info[initialIndex];
    List recievedMenus = recievedInfo['menus'] ?? [];
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          recievedInfo['name'],
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(recievedInfo['thumImage']),
                height: height * 0.378,
                width: width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: height * 0.025),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: black),
                          children: [
                            TextSpan(text: recievedInfo['name']),
                            TextSpan(
                              text: '   ${recievedInfo['address']}',
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                            )
                          ]),
                    ),
                    SizedBox(height: height * 0.025),
                    Box(
                      height: height * 0.135,
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width * .2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${((recievedInfo['star'][0] + recievedInfo['star'][1] + recievedInfo['star'][2]) / 3.0).toStringAsFixed(1)}',
                                  style: const TextStyle(
                                      fontSize: 22.5,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '맛 :   ',
                                    style: TextStyle(),
                                  ),
                                  LinearPercentIndicator(
                                    width: width * 0.45,
                                    barRadius: const Radius.circular(20),
                                    lineHeight: 10,
                                    percent: recievedInfo['star'][0] / 5,
                                    progressColor: Colors.amber,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Text(
                                    ' ${recievedInfo['star'][0]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '거리 :',
                                    style: TextStyle(),
                                  ),
                                  LinearPercentIndicator(
                                    width: width * 0.45,
                                    barRadius: const Radius.circular(20),
                                    lineHeight: 10,
                                    percent: recievedInfo['star'][1] / 5,
                                    progressColor: Colors.amber,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Text(
                                    ' ${recievedInfo['star'][1]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '메뉴 :',
                                    style: TextStyle(),
                                  ),
                                  LinearPercentIndicator(
                                    width: width * 0.45,
                                    barRadius: const Radius.circular(20),
                                    lineHeight: 10,
                                    percent: recievedInfo['star'][2] / 5,
                                    progressColor: Colors.amber,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Text(
                                    ' ${recievedInfo['star'][2]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.025),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(text: '메뉴'),
                                TextSpan(
                                  text: '', //'    눌러서 웹으로 보기',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          GestureDetector(
                            onTap: () {
                              // launchUrl(
                              //   Uri.parse(recievedInfo['mapURL']),
                              // );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: const Offset(0, 1),
                                    ),
                                  ]),
                              clipBehavior: Clip.hardEdge,
                              width: width - 20,
                              child: Column(
                                  children: recievedMenus
                                      .asMap()
                                      .map(
                                        (key, value) {
                                          return MapEntry(
                                              key,
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: width * 0.6,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                '${value['name']}'),
                                                            Text(
                                                              '${value['desc']}',
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                  fontSize: 12),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Text('${value['price']}')
                                                    ],
                                                  ),
                                                  recievedMenus.length ==
                                                          key + 1
                                                      ? const SizedBox()
                                                      : const Text('')
                                                ],
                                              ));
                                        },
                                      )
                                      .values
                                      .toList()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.025),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                  children: [
                                TextSpan(text: '위치'),
                                TextSpan(
                                  text: '    눌러서 웹으로 보기',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )
                              ])),
                          SizedBox(height: height * 0.01),
                          GestureDetector(
                            onTap: () {
                              launchUrl(
                                Uri.parse(recievedInfo['mapURL']),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: const Offset(0, 1),
                                    ),
                                  ]),
                              clipBehavior: Clip.hardEdge,
                              height: height * 0.324,
                              width: width - 20,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  recievedInfo['mapImage'],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.1),
                        ],
                      ),
                    ),
                    Text(
                      '사진 출처 : ${recievedInfo['출처']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 10),
                    ),
                    SizedBox(height: height * 0.05),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
