import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo4 extends StatelessWidget {
  const MapInfo4({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/정방폭포.png',
        title: '정방폭포',
        subTitle: '바다와 폭포의 조화로운 풍경',
        children: [
          Paragraph(
            title: '소개',
            content:
                ' 제주도 정방폭포는 대한민국에서 유일하게 바다로 직접 떨어지는 장관을 자랑하는 폭포입니다. 이 폭포는 폭 8미터, 높이 약 23미터로, 물줄기가 절벽을 타고 쏟아지는 모습이 마치 하늘에서 물이 내려오는 듯한 느낌을 줍니다.',
          ),
          Paragraph(
              title: '위치',
              content:
                  ' 정방폭포는 서귀포시 동흥동에 위치해 있으며, 폭포 입구에서 부터 폭포까지는 짧은 산책로가 잘 조성되어 있어 걷는 동안 아름다운 경치를 감상할 수 있습니다.')
        ]);
  }
}
