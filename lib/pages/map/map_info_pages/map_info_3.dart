import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo3 extends StatelessWidget {
  const MapInfo3({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/세리카트.png',
        title: '세리카트',
        subTitle: '체감속도 100km 이상!!',
        children: [
          Paragraph(
              title: '소개!!',
              content:
                  ' 최고의 속도감을 자랑하는 카트레이싱 체험! 실제 자동차 경주에서 일어날 수 있는 위험요소를 제거! 대신 그 묘미만은 제대로 느낄 수 있다! 레이싱카를 본 따 만든 미니-카! 최고 시속 70km 이상!'),
          Paragraph(
              title: '구조!!',
              content:
                  ' 크기는 길이 180cm에 폭 140cm로 범퍼카와 비슷!! 핸들과 브레이크, 가속패달이 전부인 단순구조!!'),
          Paragraph(
              title: '속도!!',
              content:
                  ' 바닥에 딱 달라붙은 카트의 체감속도는 실제의 3배 가량!! 무심코 패달을 밟다가 놀랄 수 있다!!')
        ]);
  }
}
