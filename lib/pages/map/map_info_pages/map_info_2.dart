import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo2 extends StatelessWidget {
  const MapInfo2({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/제트보트.png',
        title: '제트보트',
        subTitle: '숨 돌릴 틈 없는 짜릿한 스릴!!',
        children: [
          Paragraph(
            title: '소개!!',
            content:
                ' 스릴있는 최고의 해양래저 제주제트 폭발적인 즐거움, 제주제트!! 우아함의 극치 주상절리!! \n 파도의스릴, 주상절리만의 걸출한 자태를 정면에서, 오직 제주제트만이 가능합니다!',
          ),
          Paragraph(
              title: '!!',
              content: ' 빠르다 제트보트, 즐겁다 제트보트, 행복하다 제트보트! 바다를 가르자 제트보트!!')
        ]);
  }
}
