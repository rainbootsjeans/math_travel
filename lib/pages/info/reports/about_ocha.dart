import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/info_plus.dart';
import 'package:math_travel/widgets/paragraph.dart';
import 'package:math_travel/widgets/report_title.dart';

class AboutOcha extends StatelessWidget {
  const AboutOcha({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                  ReportTitle(title: '', boldTitle: '녹차에 대하여'),
                  SizedBox(height: height * 0.027),
                  const Text(
                    '형광팬칠 된 글자를 누르면 자세한 설명을 볼 수 있어요!',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                  ),
                  SizedBox(height: height * 0.027),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: black,
                          fontSize: 17.5,
                          fontFamily: 'GmarketSans',
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                          const TextSpan(
                              text: '녹차란?',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(
                            text: '''

녹차는 홍차를 우릴때 사용되는 잎과 동일한 차나무의 잎을 말려 건조시킨후 이를 우려 만들어집니다.

 그러나, 전통적인 찻잎은 발효하고, 녹찻잎은 찌지만 발효하지 않는다는 차이점이 있습니다.
 
 녹차는 끓여서 마시거나 정제 또는 캡슐 형태로 섭취할 수 있습니다.
 
 녹차는 카페인을 함유하고 있으나, 상대적으로 양이 많지는 않습니다.

녹차에는 ''',
                          ),
                          TextSpan(
                            text: '플라보노이드',
                            style: const TextStyle(
                                color: blueShadow, backgroundColor: blueBright),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext contxt) {
                                    return InfoPlus(
                                      name: '플라보노이드란?',
                                      info:
                                          '식물의 주요 2차 대사산물 중 하나로 자외선차단, 식물의 수분을 위한 곤충 유인 등 외부환경에 적응하는데 이로운 역할을 하며,항산화 효과가 우수한 것으로 알려져있다.',
                                    );
                                  },
                                );
                              },
                          ),
                          const TextSpan(text: ', '),
                          TextSpan(
                            text: '폴리페놀',
                            style: const TextStyle(
                                color: blueShadow, backgroundColor: blueBright),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext contxt) {
                                    return InfoPlus(
                                      name: '폴리페놀이란?',
                                      info:
                                          '하이드록시기(-OH)를 2개이상 갖고는 항산화물질.체내 세포를 공격하는 활성산소를 억제해서 몸속 염증을 예방하고, 체내 DNA와 세포는 보호한다. ',
                                    );
                                  },
                                );
                              },
                          ),
                          const TextSpan(text: ' 및 '),
                          TextSpan(
                            text: '카테킨',
                            style: const TextStyle(
                                color: blueShadow, backgroundColor: blueBright),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext contxt) {
                                    return InfoPlus(
                                      name: '카테킨이란?',
                                      info: '폴리페놀의 일종.',
                                    );
                                  },
                                );
                              },
                          ),
                          const TextSpan(text: ''' 함량이 높습니다.
                                  
이러한 물질은 항산화제이며, 산소, 돌연변이 및 암에 의한 손상으로부터 세포를 보호하는 것으로 여겨지기도 합니다.\n\n\n''')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: black,
                          fontSize: 17.5,
                          fontFamily: 'GmarketSans',
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                          const TextSpan(
                              text: '녹차의 성분',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(
                            text: '''

녹차에는 카테킨, 카페인, L- 테아닌의 세 가지 주요 생리활성 물질이 있습니다.

녹차 중의 카테킨류에는  혈압강화작용,암발생예방작용,충치예방등 다양한 생리활성작용을 일으킬 수 있습니다.

녹차 속 L-테아닌은 신경계 조절에 도움을 주는 아미노산 글루타민,글루타민산염과 구조가 비슷합니다.

이에따라 앞서 말했던 녹차의 이완효과를 담당하한다고 알려져 있으며, 녹차의 이완효과는 스트레스를 줄이고 인지 기능을 향상시키는데도 도움이 됩니다.

이뿐만 아니라 녹차 내 비타민 K는 ''',
                          ),
                          TextSpan(
                            text: '와파린',
                            style: const TextStyle(
                                color: blueShadow, backgroundColor: blueBright),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext contxt) {
                                    return InfoPlus(
                                      name: '와파린이란?',
                                      info:
                                          '항응고약물. 항응고약물은 여러 가지 요인에 의해서 우리의 몸 안에 불필요한 혈전(혈액 응고 덩어리)의 생성을 억제시키는 작용을 한다.',
                                    );
                                  },
                                );
                              },
                          ),
                          const TextSpan(
                              text:
                                  '''의 항응고 효과를 감소시킬 수 있으며, 이로 인해 혈전 발생 위험이 증가할 수 있습니다. 

또한 녹차는 베타-차단제인 나돌롤과 콜레스테롤 수치를 낮추는 데 도움이 되는 약물(아토르바스타틴 및 로수바스타틴)의 혈중 수치를 감소시킬 수 있습니다.\n\n\n''')
                        ],
                      ),
                    ),
                  ),
                  Paragraph(size: 17.5, title: '커피와는 다른 각성작용', content: '''

녹차와 커피 모두 정신자극제(각성제)로서 작용하는 카페인(Caffeine) 성분이 들어있습니다. 

카페인은 중추신경계를 자극해 깨어있을 수 있도록 각성효과와 기억력을 향상시키는 기능을 합니다. 

그러나 인포그래픽에서 묘사했듯이 녹차는 커피보다 카페인 함량이 적습니다. 

일반적인 녹차 1잔에 약 25~50㎎의 카페인이 포함된 반면, 커피 1잔은 100~150㎎의 카페인을 함유하고 있습니다.'''),
                  Container(
                    height: 150,
                    width: width,
                    color: white,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '100ml당 커피와 녹차의 카페인량',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: width * 0.05,
                                height: 100,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 125, 70, 26),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(100))),
                              ),
                              const Text(
                                '50mg',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w100),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: width * 0.05,
                                height: 20,
                                decoration: const BoxDecoration(
                                    color: green,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(100))),
                              ),
                              const Text(
                                '10mg',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w100),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '''카페인 외에도 녹차에는 졸음을 유발하지 않으면서 진정과 이완효과를 가져 카페인과 균형을 맞출 수 있는 필수아미노산인 L-테아닌이 풍부합니다. 

L-테아닌은 식품의약품안전처에서 건강기능식품 기능성 원료로 ‘스트레스로 인한 긴장을 완화시키는데 도움을 줄 수 있다’는 효과를 인정받은 바 있습니다. 

L-테아닌의 스트레스와 불안감 감소 효과는 뇌속 신경전달물질 활동을 증가시켜 불안 증상을 낮추는 방식으로, 코르티솔과 같은 스트레스 호르몬의 수치를 줄이기도 합니다. 

그렇기에 같은 양의 카페인이 든 커피보다 덜 떨리고 덜 긴장하는등 부작용이 적습니다.\n\n\n''',
                    style: TextStyle(
                        color: black,
                        fontSize: 17.5,
                        fontFamily: 'GmarketSans',
                        fontWeight: FontWeight.w100),
                  ),
                  ImageInsertedParagraph(
                      size: 17.5,
                      imageRoute: 'assets/report_assets/about_ocha/녹차임.png',
                      title: '홍차와 녹차는 왜 다를까?',
                      content:
                          '\n차는 보통 가공 방법과, 산화 상태에 따라 나뉘며, 그중에서 산화시키지 않은 찻잎을 사용하여 만든 차를 \'녹차\'라고 합니다.\n\n\n'),
                  ImageInsertedParagraph(
                      size: 17.5,
                      imageRoute: 'assets/report_assets/about_ocha/녹차잎.png',
                      title: '현미녹차는 진짜 녹차일까?',
                      content:
                          '\n사실 국내에서 파는 현미녹차는 현미 70% + 녹차30%의 함유량을 가지고 있을 뿐만아니라 실제로 마실경우 현미의 향에 의해 녹차 본연의 맛을 느끼긴 어렵습니다.\n\n\n')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
