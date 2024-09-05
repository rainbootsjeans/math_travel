import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';

import 'package:math_travel/widgets/paragraph.dart';
import 'package:math_travel/widgets/report_title.dart';

HistoryController historyController = Get.put(HistoryController());

class HistoryOfJeju extends StatelessWidget {
  HistoryOfJeju({super.key});
  final GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReportTitle(title: '', boldTitle: '제주역사를 한눈에!\n'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '지도는 확대/축소가 가능해요!',
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.027),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: JejuMap(
                      height: height * 0.324,
                      width: width - 40,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Obx(() {
                    int? currentIndex = historyController.history().index;
                    Map list = locationInfo[currentIndex ?? 0];
                    return currentIndex == null
                        ? Container(
                            height: height,
                            width: width - 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.135,
                                ),
                                const Text(
                                  '아이콘을 터치하여 위치의 역사적 사실을 알아봅시다!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: height,
                            width: width - 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                        child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: white,
                                        ),
                                        child: Image(
                                            image:
                                                AssetImage(list['imageRoute'])),
                                      ),
                                    )),
                                    Flexible(
                                        child: Container(
                                      padding: const EdgeInsets.all(10),
                                      // alignment: Alignment.center,
                                      width: double.maxFinite,
                                      height: width / 2 - 10,
                                      child: SingleChildScrollView(
                                        child: list['paragraph'],
                                      ),
                                    ))
                                  ],
                                ),
                                if (list['story'] != null) ...list['story'],
                              ],
                            ));
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HistoryStory extends StatelessWidget {
  String date;
  String story;
  HistoryStory({super.key, required this.date, required this.story});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  date,
                  style: const TextStyle(fontWeight: FontWeight.w200),
                ),
              )),
          Flexible(
              flex: 3,
              child: Text(story,
                  style: const TextStyle(fontWeight: FontWeight.w200)))
        ],
      ),
    );
  }
}

class JejuMap extends StatelessWidget {
  double width;
  double height;
  JejuMap({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      clipBehavior: Clip.none,
      constrained: true,
      child: SizedBox(
          width: width * 1.5,
          height: width * 0.7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Image(
                fit: BoxFit.fitWidth,
                image:
                    AssetImage('assets/report_assets/history_of_jeju/제주지도.png'),
              ),
              SizedBox(
                width: width * 1.5,
                height: width * 0.7,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: LocationSpot(
                              initialIndex: 4,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.09,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: height * 0.035,
                              ),
                              LocationSpot(
                                initialIndex: 3,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: LocationSpot(
                              initialIndex: 2,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.175,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          LocationSpot(
                            initialIndex: 5,
                          ),
                          SizedBox(
                            width: width * 0.017,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.175,
                          ),
                          LocationSpot(
                            initialIndex: 1,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width * 0.25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LocationSpot(
                                initialIndex: 0,
                              ),
                              SizedBox(
                                height: height * 0.045,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.135,
                          ),
                          LocationSpot(
                            initialIndex: 6,
                          ),
                          SizedBox(
                            width: width * 0.075,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: height * 0.015,
                              ),
                              LocationSpot(
                                initialIndex: 7,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

List<Map> locationInfo = [
  {
    'index': 0,
    'imageRoute': 'assets/report_assets/history_of_jeju/0.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '새별오름',
      content:
          '\n 오래전부터 가축을 방목했고 겨울이면 들불을 놓았다. 이 때문에 들불축제가 열린다. 고려말 ‘목화의 난’이 발생한 곳인데 최영 장군의 토벌대가 진압했다는 기록이 있다.',
    ),
    'story': null
  },
  {
    'index': 1,
    'imageRoute': 'assets/report_assets/history_of_jeju/1.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '오설록',
      content: '\n 현재 우리나라에서 가장 광활한 유기농 차밭이다. 추사 김정희 선생의 추사유배지가 존재한다.',
    ),
    'story': [
      HistoryStory(date: '1983년', story: '우리의 전통 차문화 정립을 위해, 제주에서 개간 착공하였다.'),
      HistoryStory(date: '2001년', story: '오설록 티 뮤지엄이 개관되어 국내차 관련 물품을 다루고있다.')
    ]
  },
  {
    'index': 2,
    'imageRoute': 'assets/report_assets/history_of_jeju/2.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '월정리 해수욕장',
      content:
          '\n 월정리’는 달이 머문다라는 서정적인 이름을 가지고 있는 곳이다. 서쪽으로 감녕리, 동쪽으로 행원리와 인접해있어 400년 역사를 지니고 있다.',
    ),
    'story': null
  },
  {
    'index': 3,
    'imageRoute': 'assets/report_assets/history_of_jeju/3.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '제주동문시장',
      content: '',
    ),
    'story': [
      HistoryStory(
          date: '1954년 3월 13일',
          story: ' 동문상설시장에 시장 건물 112채가 불타는 대형 화재가 발생하였다.'),
      HistoryStory(
          date: '1954년 10월 28일', story: ' 상인의 담뱃불로 남아있던 건물마저 불타버리는 화재가 발생한다.'),
      HistoryStory(
          date: '1954년 11월 9일',
          story: ' 동문상설시장은 당시의 자리에서 현재의 동문공설시장의 자리로 옮겨 다시 개장한다.'),
    ],
  },
  {
    'index': 4,
    'imageRoute': 'assets/report_assets/history_of_jeju/4.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '제주국제공항',
      content:
          '\n 광복 이후 미군이 인수하였다. 이후 한국전쟁이 발발하고 항공노선이 전무 하였으나, 전쟁 후에는 다시 개항하였고 노선을 계속 증폭시켜 큰 규모의 비행장으로 자리잡게 되었다.',
    ),
    'story': [
      HistoryStory(
          date: '1942년', story: ' 일제강점기 당시 일본군이 건립되었다. 당시엔 ‘정뜨르비행장’이라 불렸다 한다')
    ],
  },
  {
    'index': 5,
    'imageRoute': 'assets/report_assets/history_of_jeju/5.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '성산일출봉',
      content: '',
    ),
    // https://m.blog.naver.com/happyjejudo/222515520869 자료조사를 이거 하나로 끝낸건가
    'story': [
      HistoryStory(date: '2000년 7월 19일', story: ' 천연기념물로 지정되었다.'),
      HistoryStory(date: '2007년', story: ' 세계자연유산에 등재되었다.'),
    ]
  },
  {
    'index': 6,
    'imageRoute': 'assets/report_assets/history_of_jeju/6.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '외돌개',
      content: '\n 오설고기를 잡으러 바다로 나간 할아버지가 폭풍을 만나 돌아오지 못하자 울부짖는 할머니의 모습을 띈다고 한다',
    ),
    'story': null,
  },
  {
    'index': 7,
    'imageRoute': 'assets/report_assets/history_of_jeju/7.jpg',
    'paragraph': Paragraph(
      size: 15,
      title: '정방폭포',
      content:
          '\n 중국 진시황이 서복이라는 신하에게 불로불사의 약을 찾아오라고 명을 내리자 이를 찾아 영주산(한라산)에 산다는 신선을 찾아 제주도를 방문했다. 이를 ‘서불과지’라고도 한다. 조선 숙종 28년(1702)년 11월 5일 제주 목사 이형상은 배를 타고 정방폭포를 보았는데 이때 일을 ‘정방탐승’이라는 제목으로 <탐라순력도>에 실려 있다.\n 제주 4,3 사건의 학살지로도 기록 되어있다.',
    ),
    'story': null
  },
];

class LocationSpot extends StatelessWidget {
  int initialIndex;
  LocationSpot({super.key, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        historyController.updateModel(initialIndex);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width * 0.075,
            height: width * 0.075,
            decoration: const BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
          Container(
            alignment: Alignment.center,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            width: width * 0.06,
            height: width * 0.06,
            child: Image(
              image: AssetImage(locationInfo[initialIndex]['imageRoute']),
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryModel {
  int? index;
}

class HistoryController extends GetxController {
  final history = HistoryModel().obs;

  void updateModel(int index) {
    history.update((val) {
      val?.index = index;
    });
  }
}
