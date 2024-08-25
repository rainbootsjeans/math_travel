import 'package:flutter/cupertino.dart';
import 'package:math_travel/widgets/page.dart';
import 'package:math_travel/widgets/paragraph.dart';

class MapInfo0 extends StatelessWidget {
  const MapInfo0({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalPage(
        imageRoute: 'assets/map_images/월정리.jpg',
        title: '월정리 해수욕장',
        subTitle: '월정리해수욕장근처횟집에서흰살생선회랑매운알탕먹고싶다',
        children: [
          Paragraph(
            title: '어디임?',
            content:
                '월정리해수욕장에서는 고도로 발전된 드론들이 상공을 날아다니며 해변의 안전을 관리하고, 해변 곳곳에는 AI가 탑재된 로봇들이 관광객들을 돕고 있습니다. 물속에서는 투명한 돔 형태의 수중 거주 공간이 있으며, 이곳에서는 바다 생태계를 실시간으로 관찰할 수 있는 경험을 제공합니다. 해변의 모래는 특수 나노 기술로 강화되어 발이 닿는 느낌이 최적화되어 있고, 날씨 변화에 따라 자동으로 온도가 조절되는 기능을 갖추고 있습니다.',
          )
        ]);
  }
}
