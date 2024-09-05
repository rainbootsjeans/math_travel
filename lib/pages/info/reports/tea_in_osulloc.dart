import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/paragraph.dart';
import 'package:math_travel/widgets/report_title.dart';
import 'package:url_launcher/url_launcher.dart';

class TeaInOsulloc extends StatelessWidget {
  const TeaInOsulloc({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReportTitle(title: '오설록에서 보세요!', boldTitle: '제주 녹차 이야기.'),
                  SizedBox(height: height * 0.027),
                  ImageInsertedParagraph(
                      size: 17.5,
                      title: '서론',
                      content: '''
감귤, 한라봉, 흑돼지, 제주도 하면 생각나는 음식들이죠! 

그리고 제주도와 가까운 우도의 땅콩이나, 갈치, 옥돔 등 신선한 해산물 역시 빠질 수 없죠. 제주도는 오산과 멀리 떨어져 있어서 그런지 정말 새롭고 맛있는 특산물들이 많은 것 같아요! 

오늘은 그중에서도 제주도의 ‘녹차’ 이야기를 해보려고 해요.

자 그럼, 향긋한 녹차 밭으로 떠나볼까요?\n\n\n''',
                      imageRoute:
                          'assets/report_assets/greentea_image/greentea1.png'),
                  ImageInsertedParagraph(
                      size: 17.5,
                      title: '녹차의 특징',
                      content: '''
먼저 녹차의 특징을 알아볼게요!

녹차는 차나무의 잎을 원료로 하는데요, 특별한 점은 어린잎을 볶아서 말린다는 것입니다.

이 과정에서 열 때문에 찻잎 속의 산화효소가 파괴되어 깔끔한 맛을 내고, 푸른빛을 내게 되죠.

이렇게 만들어진 녹차는 공장에서 현미와 함께 가공되어 우리에게 친숙한 현미녹차가 되기도 하고, 갖가지 과일과 함께 블랜딩 되어 시중에 팔리기도 한답니다.
또한, 세교고등학교 학생들이 방문하게 될 ‘오설록’은 녹차 아이스크림과 녹차 치즈케이크 같이, 녹차를 활용한 디저트로도 유명하죠.

벌써 먹고 싶네요!\n\n\n''',
                      imageRoute:
                          'assets/report_assets/greentea_image/greentea2.png'),
                  ImageInsertedParagraph(
                      size: 17.5,
                      title: '제주도의 녹차가 유명한 이유는?',
                      content: '''
그렇다면 이러한 녹차가 특별히 ‘제주’에서 유명한 이유는 무엇일까요?

그 비밀은 바로, 제주도의 ‘흙’에 있습니다. 제주도의 흙은 국내 유일의 ‘화산회토’인데요, 화산회토란 화산회를 주로 하여 발달한 간대토양을 말합니다.

이러한 화산회토는 유기물 함량이 매우 높아 양분과 수분의 보유능력이 뛰어나며, 이는 차나무의 생육과 우수한 품질의 찻잎 생산에 큰 도움을 준다고 해요.
''',
                      imageRoute:
                          'assets/report_assets/greentea_image/greentea4.png'),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/report_assets/greentea_image/greentea5.png'),
                        height: 100,
                        width: double.maxFinite,
                        fit: BoxFit.fitWidth,
                      ),
                      Text('''
제주도의 기후 또한 녹차 생산에 큰 몫을 합니다.

좋은 차를 재배하기 위해서는 연 강수량은 1400mm 이상, 연 평균 기온은 14도에서 16도 사이여야 하며, 겨울 최저 기온은 –5도 이상이어야 한다고 해요.

하지만 제주도는 이 까다로운 녹차 재배 조건에도 완벽히 부합합니다.

제주도는 연평균 15도 이상, 연 강수량1800mm 이상으로 잎이 얼기 쉽고 물이 많이 필요한 차 재배에 최적의 조건을 가지고 있습니다.

우리나라의 녹차 주요 생산지가 보성, 하동, 제주, 이 세 지역뿐인 것을 생각하면 정말 흔치 않은것이죠!\n\n\n''',
                          style: TextStyle(
                              color: black,
                              fontSize: 17.5,
                              fontFamily: 'GmarketSans',
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('퀴즈 참여하고\n선물 받자!'),
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://docs.google.com/forms/d/e/1FAIpQLSehNkpZ0xzEgJLuSP0pWV8vRdWorQiD4LxQ69cYzC1OldIPtw/viewform'));
                        },
                        child: const Image(
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/report_assets/greentea_image/greenteaQR.jpg')),
                      )
                    ],
                  ),
                  const Text('\n\n\n')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
