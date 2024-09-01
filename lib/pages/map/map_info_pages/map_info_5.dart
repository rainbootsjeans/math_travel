import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo5 extends StatelessWidget {
  const MapInfo5({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/월정리.jpg',
        title: '월정리 해수욕장',
        subTitle: '달이 머물다가는 아름다운 해변',
        children: [
          Paragraph(
              title: '소개',
              content:
                  ' 월정리 해수욕장은 에메랄드빛 바다와 고운 백사장을 자랑하는 해변입니다. \'월정리\'라는 이름은 \'달이 머뭄\'을 의미하며, 한 폭의 그림같은 해변을 밝은 달이 빛추는 모습에서 유래되었습니다.'),
          Paragraph(
              title: '식사',
              content: ' 해안선을 따라 늘어선 각종 카페와 식당들 또한 월정리만의 독특한 매력이라 할 수 있겠습니다.')
        ]);
  }
}
