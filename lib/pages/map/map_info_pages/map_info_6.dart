import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo6 extends StatelessWidget {
  const MapInfo6({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/성산일출봉.png',
        title: '성산일출봉',
        subTitle: '바다위에 우뚝 솟아난 수성화산',
        children: [
          Paragraph(
              title: '소개',
              content:
                  ' 성산일출봉은 제주도를 대표하는 명소 중 하나로, 유네스코 세계자연유산으로 지정된 자연경관입니다. 정상에 오르면 너비가 8만여 평에 이르는 분화구를 볼 수 있고, 그 둘레에는 99개의 봉우리가 자리하고 있습니다. 이 모습이 거대한 성과 같다하여 \'성산(城山)\', 해가 뜨는 모습이 장관이라 하여 \'일출봉(日出峰)\'이라는 이름이 붙었습니다.'),
          Paragraph(
              title: '전설?',
              content:
                  ' 전설에 의하면 성산일출봉의 봉우리가 100개였다면, 제주에도 사자와 호랑이 같은 맹수가 있었을 것인데, 하나가 모자라 사자도 호랑이도 없다고 합니다.')
        ]);
  }
}
