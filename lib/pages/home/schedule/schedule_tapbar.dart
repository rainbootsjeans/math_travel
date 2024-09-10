import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'package:math_travel/controllers/schedule_controller.dart';
import 'package:math_travel/models/team_model.dart';
import 'package:math_travel/models/schedule_model.dart';

import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/widgets/schedule_box.dart';

ScheduleController scheduleController = Get.put(ScheduleController());

// ignore: must_be_immutable
class ScheduleTapbar extends StatefulWidget {
  int initialIndex;
  ScheduleTapbar({super.key, required this.initialIndex});

  @override
  State<ScheduleTapbar> createState() => ScheduleTapbarState();
}

class ScheduleTapbarState extends State<ScheduleTapbar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  final selectedColor = const Color(0xff1a73e8);
  final tabs = [
    const Tab(text: '9일'),
    const Tab(text: '10일'),
    const Tab(text: '11일'),
  ];

  // Q. 왜 schedule controller에서 안 받아오고 이러나요? A.
  final scheduleTimeIfos = ScheduleModel().scheduleTimeInfo;

// 괜히 아이콘이랑 크기 다르게 하려고 하다가
  List<List<Map<String, dynamic>>> teamASchduleMap = [
    [
      {'where': '임시일정A', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교집결', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '김포-제주', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름-오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록-제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트-소인쿡', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '소인쿡-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '/뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리-정방', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방폭포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방-월정리', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리해변+중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리-성산', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산일출봉', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산-일출명가', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '일출-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '레크레이션', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길-고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식=고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식-전통시장', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장체험', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제주-김포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-학교', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ]
  ];

  List<List<Map<String, dynamic>>> teamBSchduleMap = [
    [
      {'where': '임시일정B', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교집결', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '김포-제주', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름-제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트-오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록-소인쿡', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '소인쿡-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '/뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-정방폭포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방폭포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방폭포-세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트-월정리', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리해변+중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리-성산', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산일출봉', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산-일출명가', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '일출-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '레크레이션', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길-고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식=고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식-전통시장', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장체험', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제주-김포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-학교', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ]
  ];

  List<List<Map<String, dynamic>>> teamCSchduleMap = [
    [
      {'where': '임시일정C', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교집결', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '김포-제주', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름-오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록-세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트-소인쿡', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '소인쿡-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '/뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트-정방', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방폭포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방-월정리', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리해변+중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리-성산', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산일출봉', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산-일출명가', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '일출-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '레크레이션', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길-고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식=고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식-전통시장', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장체험', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제주-김포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-학교', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ]
  ];

  List<List<Map<String, dynamic>>> teamDSchduleMap = [
    [
      {'where': '임시일정D', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교집결', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학교-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '김포-제주', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '새별오름-세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '세리카트-오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '오설록-소인쿡', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '소인쿡-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '/뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '올레길-제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제트보트-월정리', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리해변+중식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '월정리-성산', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산일출봉', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '성산-일출명가', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '석식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '일출-숙소', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '레크레이션', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '학급활동/일상점검', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ],
    [
      {'where': '숙면', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '조식', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '뭘까 이 잉여시간은', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '숙소-정방폭포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방폭포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '정방폭포-고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식=고기국수', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '중식-전통시장', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장체험', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '전통시장-공항', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '탑승수속', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '제주-김포', 'isPlace': true, 'icon': const Icon(Icons.abc)},
      {'where': '공항-학교', 'isPlace': true, 'icon': const Icon(Icons.abc)},
    ]
  ];

  late Map teamScheduleMapInfo = {
    'A조': teamASchduleMap,
    'B조': teamBSchduleMap,
    'C조': teamCSchduleMap,
    'D조': teamDSchduleMap,
  };

  @override
  void initState() {
    tabController = TabController(
        initialIndex: widget.initialIndex, length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Box(
                width: width * 0.15,
                height: height * 0.05,
                child: const Center(child: Text('일자'))),
            Box(
              width: width * 0.65,
              height: height * 0.05,
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: tabs,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: tabs
                .asMap()
                .map(
                  (index, tab) {
                    return MapEntry(
                      index,
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Obx(
                              () {
                                List<List<Map<String, dynamic>>> schedules =
                                    teamScheduleMapInfo[
                                        teamController.team().currentTeam];

                                return Column(
                                  children: schedules[index].map(
                                    (item) {
                                      return ScheduleBox(
                                          isPlace: item['isPlace'],
                                          icon: item['icon'],
                                          where: item['where'],
                                          startTime: 1234,
                                          endTime: 4311);
                                    },
                                  ).toList(),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
                .values
                .toList(),
          ),
        ),
      ],
    );
  }
}
