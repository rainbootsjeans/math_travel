import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo0 extends StatelessWidget {
  const MapInfo0({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/새별오름.png',
        title: '새별오름',
        subTitle: '저녁 하늘에 샛별과 같이 외로이 서있다 ',
        children: [
          Paragraph(
            title: '소개',
            content:
                ' 새별오름은 제주에 위치한 오름 중 하나로, 독특한 경관과 아름다운 풍경으로 많은 이들이 찾는 명소입니다. \'새별\'이라는 이름은 옛 제주 방언으로 \'샛별\'을 의미하며, 오름의 모양이 마치 하늘의 별처럼 빛나는 느낌을 준다 하여 붙여진 이름입니다.',
          ),
          Paragraph(
              title: '위치',
              content:
                  ' 새별오름은 제주 서쪽 애월읍 봉성리에 위치해 있으며, 해발 약 519m 정도입니다. 비교적 낮은 높이지만, 정상에 오르면 제주도의 광활한 들판과 바다를 한눈에 내려다볼 수 있어 뛰어난 전망을 자랑합니다.')
        ]);
  }
}
