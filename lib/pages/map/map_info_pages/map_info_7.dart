import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo7 extends StatelessWidget {
  const MapInfo7({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/올레길.png',
        title: '외돌개',
        subTitle: '홀로 우뚝 선 바위',
        children: [
          Paragraph(
              title: '소개',
              content:
                  ' 외돌개는 제주 올레길 7코스로, 바다에서 20m 높이로 홀로 우뚝 솟은 형상의 돌 기둥입니다. \'바다에 홀로 서 있다\' 하여 \'외돌개\'라는 이름이 붙여졌습니다.')
        ]);
  }
}
