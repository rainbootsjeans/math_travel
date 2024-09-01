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
            content: ' 오설록은 ',
          )
        ]);
  }
}
