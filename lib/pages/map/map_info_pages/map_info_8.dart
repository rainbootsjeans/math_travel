import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo8 extends StatelessWidget {
  const MapInfo8({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/전통시장체험.png',
        title: '제주동문시장',
        subTitle: '가장 크고 역사가 깊은 재래시장',
        children: [
          Paragraph(
              title: '소개',
              content:
                  '제주동문시장, 동문재래시장은 가장 크고 역사가 깊은 상설 재래시장입니다.\n\n지역 주민과 관광객 모두에게 사랑받는 곳으로 1년 내내 발걸음이 끊이지 않는다고 합니다.\n\n다양한 먹거리와 특산품 그리고 기념품들을 찾아볼 수 있습니다.\n\n'),
          const Text(
            '사진 출처 : https://visitjeju.net/kr/detail/view?contentsid=CONT_000000000500745#',
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
          ),
        ]);
  }
}
