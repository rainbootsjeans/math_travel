import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/widgets/report_title.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:math_travel/widgets/box.dart';

import 'package:math_travel/themes/colors.dart';

class Sechelin extends StatelessWidget {
  const Sechelin({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * 0.05,
                    ),
                    ReportTitle(title: '세슐랭 선정', boldTitle: '월정리 해수욕장 맛집 리스트')
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Restaurant(
                  name: '월정리 갈비밥',
                  address: '제주특별자치도 제주시 구좌읍 월정7길 46',
                  star: 4.7,
                  imageRoute: 'assets/report_assets/sechelin/갈비밥.png',
                  route: RestaurantInfo(
                    initialIndex: 0,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Restaurant(
                  name: '유메이 우동',
                  address: '제주특별자치도 제주시 구좌읍 월정3길 52',
                  star: 4.0,
                  imageRoute: 'assets/report_assets/sechelin/유메이.png',
                  route: RestaurantInfo(
                    initialIndex: 1,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Restaurant(
                  name: '제주로움',
                  address: '제주특별자치도 제주시 구좌읍 월정3길 14 ',
                  star: 3.7,
                  imageRoute: 'assets/report_assets/sechelin/제주로움.png',
                  route: RestaurantInfo(
                    initialIndex: 2,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Restaurant extends StatelessWidget {
  String name;
  String address;
  double star;
  String imageRoute;
  Widget route;
  Restaurant({
    super.key,
    required this.name,
    required this.address,
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
        width: width * 0.8,
        height: width * 0.8,
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
                  padding: const EdgeInsets.only(left: 12.5, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        address,
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      ),
                      const Text('',
                          style: TextStyle(
                            fontSize: 3,
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Text(
                            ' $star',
                            style: const TextStyle(fontWeight: FontWeight.w800),
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

  List<Map> info = [
    {
      'thumImage': 'assets/report_assets/sechelin/갈비밥.png',
      'mapImage': 'assets/report_assets/sechelin/갈비밥위치.png',
      'mapURL': 'https://map.naver.com/p/entry/place/37853863?c=15.00,0,0,0,dh',
      'star': [5.0, 4.0, 5.0],
      'name': '월정리 갈비밥',
      'address': '제주특별자치도 제주시 구좌읍 월정7길 46',
      'menus': [
        {
          'name': '제주를 담은 한상차림',
          'desc': '제주 로컬 푸드 흑돼지, 전복, 뿔소라 등을 사용한 11첩 한상차림',
          'price': '19,000원'
        },
        {
          'name': '제주타워',
          'desc': '오직 월정리갈비밥에서만 느낄 수 있는 한라봉 타워 에이드',
          'price': '7,000원'
        }
      ]
    },
    {
      'thumImage': 'assets/report_assets/sechelin/유메이.png',
      'mapImage': 'assets/report_assets/sechelin/유메이위치.png',
      'mapURL':
          'https://map.naver.com/p/search/%EC%A0%9C%EC%A3%BC%EC%9C%A0%EB%A9%94%EC%9D%B4%EC%9A%B0%EB%8F%99/place/1301403671?c=15.00,0,0,0,dh&isCorrectAnswer=true',
      'star': [4.0, 5.0, 3.0],
      'name': '유메이 우동',
      'address': '제주특별자치도 제주시 구좌읍 월정3길 52',
      'menus': [
        {'name': '소곱창 우동', 'desc': '', 'price': '13,000원'},
        {'name': '소고기 우동', 'desc': '', 'price': '10,000원'},
        {'name': '소고기 카레우동', 'desc': '', 'price': '13,000원'}
      ],
    },
    {
      'thumImage': 'assets/report_assets/sechelin/제주로움.png',
      'mapImage': 'assets/report_assets/sechelin/제주로움위치.png',
      'mapURL':
          'https://map.naver.com/p/entry/place/1592490151?c=15.61,0,0,0,dh',
      'star': [4.0, 3.0, 4.0],
      'name': '제주로움',
      'address': '제주특별자치도 제주시 구좌읍 월정3길 14',
      'menus': [
        {'name': '현무암 카츠', 'desc': '', 'price': '12,000원'},
        {'name': '새우몬딱', 'desc': '', 'price': '13,000원'},
        {'name': '연어몬딱', 'desc': '', 'price': '17,000원'},
        {'name': '맨도롱 우동', 'desc': '', 'price': '11,000원'},
      ],
    },
  ];

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
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('${value['name']}'),
                                                  Text('${value['price']}')
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
                    )
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
