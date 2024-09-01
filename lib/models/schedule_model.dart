import 'package:flutter/material.dart';

class ScheduleModel {
  int currentTime = 0;
  var currentPercentage = 0.0001;
  var curScheduleStartTime = '00:00';
  var curScheduleEndTime = '00:00';
  bool isTravel = false;
  late Map teamScheduleInfo;

  //주석은 A팀 기준, 근데 시간 자체는 다 같아서 상관 x
  final List scheduleTimeInfo = [
    [
      [0, 600],
      [600, 630], //학교집결
      [630, 800], //학교 -공항
      [800, 900], //탑승수속
      [900, 1200], //김포-제주
      [1200, 1230], //중식=이레한정식
      [1230, 1330], //공항-새별오름
      [1330, 1430], //새별오름
      [1430, 1500], //새별오름-오설록
      [1500, 1600], //오설록
      [1600, 1630], //오설록-제트보트
      [1630, 1730], //제트보트
      [1730, 1800], //제트보트-소인쿡
      [1800, 1900], //석식 = 소인쿡
      [1900, 2000], //소인쿡-숙소
      [2000, 2230], //학급활동/일상점검
      [2230, 2400], //숙면
    ],
    [
      [0, 700], //숙면
      [700, 830], //조식 = 에슐리
      [830, 930], // 개인정비
      [930, 1000], //숙소-세리카트
      [1000, 1100], //세리카트
      [1100, 1130], //세리-정방
      [1130, 1230], //정방폭포
      [1230, 1330], //정방-월정리
      [1330, 1500], //월정리해수욕장 = 자유식
      [1500, 1530], //월정리-성산
      [1530, 1630], //성산일출봉
      [1630, 1700], //성산-일출명가
      [1700, 1800], //석식 = 일출명가
      [1800, 1930], //일출-숙소
      [1930, 2130], //레크레이션
      [2130, 2230], //학급활동/일상점검
      [2230, 2400], //숙면
    ],
    [
      [0, 700], //숙면
      [700, 830], //조식 = 에슐리
      [830, 900], //개인정비
      [900, 930], //숙소-올레길
      [930, 1020], //올레길
      [1020, 1120], //올레길-고기국수
      [1120, 1220], //중식
      [1220, 1240], //고기국수-전통시장
      [1240, 1400], //전통시장체험
      [1400, 1420], //전통시장-공항
      [1420, 1440], //탑승수속
      [1440, 1810], //제주-김포
      [1810, 2000] //공항-학교
    ]
  ];

  List<List<String>> teamASchedule = [
    [
      '임시일정',
      '학교집결',
      '학교-공항',
      '탑승수속',
      '김포-제주',
      '중식',
      '공항-새별오름',
      '새별오름',
      '새별오름-오설록',
      '오설록',
      '오설록-제트보트',
      '제트보트',
      '제트보트-소인쿡',
      '석식',
      '소인쿡-숙소',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-세리카트',
      '세리카트',
      '세리-정방',
      '정방폭포',
      '정방-월정리',
      '월정리해수욕장',
      '월정리-성산',
      '성산일출봉',
      '성산-일출명가',
      '석식',
      '일출-숙소',
      '레크레이션',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-올레길',
      '올레길',
      '올레길-고기국수',
      '중식',
      '고기국수-전통시장',
      '전통시장체험',
      '전통시장-공항',
      '탑승수속',
      '제주-김포',
      '공항-학교',
    ],
  ];
  List<List<String>> teamBSchedule = [
    [
      '임시일정',
      '학교집결',
      '학교-공항',
      '탑승수속',
      '김포-제주',
      '중식',
      '공항-새별오름',
      '새별오름',
      '새별오름-제트보트',
      '제트보트',
      '제트보트-오설록',
      '오설록',
      '오설록-소인쿡',
      '석식',
      '소인쿡-숙소',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-정방폭포',
      '정방폭포',
      '정방폭포-세리카트',
      '세리카트',
      '세리카트-월정리',
      '월정리해수욕장',
      '월정리-성산',
      '성산일출봉',
      '성산-일출명가',
      '석식',
      '일출-숙소',
      '레크레이션',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-올레길',
      '올레길',
      '올레길-고기국수',
      '중식',
      '고기국수-전통시장',
      '전통시장체험',
      '전통시장-공항',
      '탑승수속',
      '제주-김포',
      '공항-학교',
    ],
  ];
  List<List<String>> teamCSchedule = [
    [
      '임시일정',
      '학교집결',
      '학교-공항',
      '탑승수속',
      '김포-제주',
      '중식',
      '공항-새별오름',
      '새별오름',
      '새별오름-오설록',
      '오설록',
      '오설록-세리카트',
      '세리카트',
      '세리카트-소인쿡',
      '석식',
      '소인쿡-숙소',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-제트보트',
      '제트보트',
      '제트보트-정방',
      '정방폭포',
      '정방-월정리',
      '월정리해수욕장',
      '월정리-성산',
      '성산일출봉',
      '성산-일출명가',
      '석식',
      '일출-숙소',
      '레크레이션',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-올레길',
      '올레길',
      '올레길-고기국수',
      '중식',
      '고기국수-전통시장',
      '전통시장체험',
      '전통시장-공항',
      '탑승수속',
      '제주-김포',
      '공항-학교',
    ],
  ];
  List<List<String>> teamDSchedule = [
    [
      '임시일정',
      '학교집결',
      '학교-공항',
      '탑승수속',
      '김포-제주',
      '중식',
      '공항-새별오름',
      '새별오름',
      '새별오름-세리카트',
      '세리카트',
      '세리카트-오설록',
      '오설록',
      '오설록-소인쿡',
      '석식',
      '소인쿡-숙소',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-올레길',
      '올레길',
      '올레길-제트보트',
      '제트보트',
      '제트보트-월정리',
      '월정리해수욕장',
      '월정리-성산',
      '성산일출봉',
      '성산-일출명가',
      '석식',
      '일출-숙소',
      '레크레이션',
      '학급활동/일상점검',
      '숙면',
    ],
    [
      '숙면',
      '조식',
      '개인정비',
      '숙소-정방폭포',
      '정방폭포',
      '정방폭포-고기국수',
      '중식',
      '고기국수-전통시장',
      '전통시장체험',
      '전통시장-공항',
      '탑승수속',
      '제주-김포',
      '공항-학교',
    ],
  ];

  Map<String, Map<String, dynamic>> scheduleInfo = {
    // 이동류
    '학교집결': {'icon': Icons.abc, 'isPlace': false},
    '이동중': {'icon': Icons.abc, 'isPlace': false},
    '비행기탐': {'icon': Icons.abc, 'isPlace': false},
    '탑승수속': {'icon': Icons.abc, 'isPlace': false},

    // 장소류
    '새별오름': {'icon': Icons.abc, 'isPlace': true},
    '오설록': {
      'icon': const AssetImage('assets/icon_images/오설록.png'),
      'isPlace': true
    },
    '제트보트': {'icon': Icons.abc, 'isPlace': true},
    '세리카트': {'icon': Icons.abc, 'isPlace': true},
    '정방폭포': {'icon': Icons.abc, 'isPlace': true},
    '월정리해수욕장': {'icon': Icons.abc, 'isPlace': true},
    '성산일출봉': {'icon': Icons.abc, 'isPlace': true},
    '올레길': {'icon': Icons.abc, 'isPlace': true},
    '전통시장체험': {'icon': Icons.abc, 'isPlace': true},

    // 숙소류
    '숙소': {'icon': Icons.abc, 'isPlace': false},
    '숙면': {'icon': Icons.abc, 'isPlace': false},
    '개인정비': {'icon': Icons.abc, 'isPlace': false},
    '학급활동/일상점검': {'icon': Icons.abc, 'isPlace': false},
    '레크레이션': {'icon': Icons.abc, 'isPlace': true},

    //기타
    '임시일정': {'icon': Icons.abc, 'isPlace': false},
    '식사': {'icon': Icons.abc, 'isPlace': false},
  };

  ScheduleModel() {
    teamScheduleInfo = {
      'A조': teamASchedule,
      'B조': teamBSchedule,
      'C조': teamCSchedule,
      'D조': teamDSchedule,
    };
  }
}
