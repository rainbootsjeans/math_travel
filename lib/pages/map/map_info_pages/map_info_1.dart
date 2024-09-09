import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo1 extends StatelessWidget {
  const MapInfo1({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/오설록.png',
        title: '오설록',
        subTitle: '제주가 가진 경이로운 생명력으로 탄생한 차',
        children: [
          Paragraph(
            title: '소개',
            content:
                '오설록은 제주도의 아름다운 자연 속에 자리한 차(茶) 전문 관광지입니다.\n\n이곳은 한국 전통 차 문화와 현대적 감각이 조화를 이루며, 제주의 자연으로 빚어낸 녹차를 맛볼 수 있는 곳으로 유명합니다.\n\n',
          ),
          Paragraph(
              title: '이름',
              content:
                  '오설록이란 이름은 \'눈 속에서도 피어나는 녹차의 생명력에 대한 감탄의 표현\'과 \'origin of sulloc\', 즉 이곳이 설록차의 고향이란 뜻을 담고 있다고 합니다.\n\n'),
          const Text(
            '사진 출처 : https://visitjeju.net/kr/detail/view?contentsid=CONT_000000000500457',
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
          ),
        ]);
  }
}
