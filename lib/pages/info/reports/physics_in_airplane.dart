import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/widgets/info_plus.dart';
import 'package:math_travel/widgets/paragraph.dart';
import 'package:math_travel/widgets/report_title.dart';

class PhysicsInAirplane extends StatelessWidget {
  const PhysicsInAirplane({super.key});

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
                  ReportTitle(title: '비행기에서 관찰할 수 있는', boldTitle: '신가한 물리현상'),
                  SizedBox(height: height * 0.027),
                  const Text(
                    '형광팬칠 된 글자를 누르면 자세한 설명을 볼 수 있어요!',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                  ),
                  SizedBox(height: height * 0.027),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 3,
                          child:
                              Paragraph(size: 17.5, title: '상승시', content: '''

물의 끓는 점이 낮아진다.
만년필을 세웠을 때 잉크가 새어나갈 수도 있다.
과자봉투 등의 비닐봉투가 있다면 봉투가 팽창하는지 확인해보자.''')),
                      const Flexible(
                        child: Text(
                          '\n\n\n    VS    ',
                          style: TextStyle(
                            color: black,
                            fontSize: 17.5,
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Padding(
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
                                    text: '하강시\n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                const TextSpan(text: '\n'),
                                const TextSpan(
                                  text: '''비행기가 상공에서 자유낙하 할 경우 선내는 일시적인 ''',
                                ),
                                TextSpan(
                                  text: '무중력 상태',
                                  style: const TextStyle(
                                      color: blueShadow,
                                      backgroundColor: blueBright),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext contxt) {
                                          return InfoPlus(
                                            name: '무중력 상태?',
                                            info:
                                                '''중력은 다른 말로는 만유인력, 즉 간단히 말해 질량이 존재하는 모든 물체에 작용하는 서로 끌어당기는 힘(인력)이라고 한다.
그러나 질량이 없는 물체는 존재하지 않기 때문에 물리적으로 중력이 작용되지 않는 무중력 상태를 만드는 것은 불가능하며 이는 물리법칙을 위배하는 표현이라는 사실을 알 수 있다.
그러나 중력과 상쇄되는 반대방향의 같은 크기의 힘이 작용되어 물체에 가해지는 알짜힘(한 물체에 적용되는 힘의 합력)을 0으로 만들어 중력이 작용되지 않는 것처럼 느껴지게 하는 상태를 보편적으로 무중력 상태라고 칭하곤 한다. 

이러한 일시적인 무중력(에 가까운) 상태는 우주비행사나 비행기조종사 등의
훈련에 사용되기도 하며, 실제로 비행기에서 자유낙하하는 방식으로 훈련하는 방법도 있다고 한다.
''',
                                          );
                                        },
                                      );
                                    },
                                ),
                                const TextSpan(text: '''가 된다.''')
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Paragraph(
                      size: 17.5, title: '만약 비행기에서 뛰어내린다면 어떻게 될까?', content: '''

낙하산을 맨 사람이 상공 약 3만 피트에서 낙하한다고 한다면 중력 가속도에 의해 속도가 증가하면서 그로 인한 공기 저항 또한 커질 것이다.

이러한 공기 저항력의 크기가 중력과 같아진다면 사람에게 가해지는 알짜힘은 0이 되면서 이후로는 공기저항력이 중력과 같아지는 순간의 속도를 유지한 채로 관성에 의한  등속도 직선 운동을 하게 된다.\n'''),
                  Paragraph(
                      size: 17.5,
                      title: '일정 높이 이상의 상공에서 자유낙하하게 된다면',
                      content:
                          '중력과 공기저항력의 크기가 같아지는 순간부터 관성에 의한 등속도 직선 운동을 하게 된다.\n관련한 개념을 사용한 문제를 풀어보도록 하자.\n'),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext contxt) {
                          return SizedBox(
                            width: width * 0.8,
                            height: height * 0.63,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: const AssetImage(
                                        'assets/report_assets/airplane_image/graph.png'),
                                    width: width * 0.8),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                      width: width * 0.8,
                                      height: height * 0.05,
                                      color: const Color.fromARGB(
                                          255, 250, 250, 250),
                                      child: const Center(
                                        child: Text(
                                          '확인',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: 'GmarketSans',
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Box(
                      height: height * 0.081,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text('  관련 문제 풀어보기'), Text('>  ')],
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Paragraph(
                      size: 17.5,
                      title: '기압차이로 인한 불편함, 뭐가 있을까?',
                      content:
                          '\n비행기 이착륙시 발생하는 기압 차이로 인해 귀가 먹먹해지는 증상은 항공성 중이염의 증상으로 이런 경우에는 기압 감소 귀마개의 착용이나 가벼운 저작운동, 물, 침 등을 삼키는 행위가 도움이 된다.\n\n\n'),
                  ReportTitle(title: '비상 상황 발생시', boldTitle: '비행기 선내에서의 행동요법'),
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
                              text: '안전벨트 착용',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(
                            text: '''

비행기가 급정거하거나 비슷한 질량체와 충돌하는 경우 ''',
                          ),
                          TextSpan(
                            text: '운동관성',
                            style: const TextStyle(
                                color: blueShadow, backgroundColor: blueBright),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext contxt) {
                                    return InfoPlus(
                                      name: '관성',
                                      info: '''
관성이란 용어 자체는 대부분 한 번씩 들어봤을 정도로 보편적인 개념인데, 간단히 말해  관성이란 원래의 운동상태를 유지하려는 성질이다.
이는 크게 운동관성과 정지관성으로 구분할 수 있는데, 운동관성은 운동하던 상태를 유지하려는 관성(ex 버스에서 급정거 했을때 몸이 앞으로 쏠림)이며 정지관성은 정지상태를 유지하려는 관성(ex 자동차에서 가속할 때 몸이 뒤로 쏠림)을 말한다.
비행기의 상황에 적용시켜보자면 비슷한 질량의 질량체와 충돌하여 속력이 크게 줄어드는 상황에서라면 원래 운동하던 속도를 유지하려는 운동관성으로 인해 몸이 앞으로 쏠리게 될 것이며 이에 더해 비행기가 추락한다고 가정한다면 속도(운동 방향과 속력 모두)가 바뀌기 때문에 원래의 방향을 유지하려는 운동관성으로 인해 몸이 공중에 뜨게 될 것이다.

하지만 이런 관성은 사실상 가상의 힘으로, 원심력 또한 관성력에 속한다.
이는 물체의 상호작용으로 인해 생기는 힘이 아니기 때문에 붙은 이름으로,
그렇기에 관성력에는 작용-반작용의 법칙이 적용되지 않는다.''',
                                    );
                                  },
                                );
                              },
                          ),
                          const TextSpan(
                              text: '''으로 인해 우리의 몸은 운동방향으로 큰 힘을 받게 된다.

피해를 예방하기 위해 기내에서 돌아다니는 일을 최대한 자제하고우리의 몸이 쏠리지 않게 잡아주는 안전벨트를 착용해야 한다.\n\n\n''')
                        ],
                      ),
                    ),
                  ),
                  Paragraph(size: 17.5, title: '신속한 산소마스크 착용', content: '''

창문이 깨지거나, 비행기의 여압장치에 문제가 발생하는 등의 이유로 기내의 기압이 급격하게 낮아지는 경우 비행기 선반에서 산소 마스크가 내려오게 된다.

이는 급격한 기압저하로 인한 저산소증을 예방하기 위함으로 이러한 경우에는 승무원의 지시에 따라 당황하지 않고 산소 마스크를 당겨 약 15초에 20초 이내에 산소 마스크를 코와 입 모두에 대야한다.\n\n\n'''),
                  Paragraph(
                      size: 17.5,
                      title: '비행기에서 화재사고가 빈번히 발생하는 이유?',
                      content: '''

상공 10,000ft 이상에서부터는 인간이 적응할 수 없을 정도로 기압이 낮아지기 때문에 비행기에서는 비행기 내부의 기압을 올려주는 여압장치를 사용해 기압을 조절한다.

하지만 만약 비행기의 기압이 알 수 없는 연유로 낮아지게 된다면 급격한 기압의 저하로 인하여 저산소증이 발생하게 된다.

이를 방지하기 위해 비행기에는 산소마스크가 항시 구비되어 있는데, 산소마스크가 선반에서 내려오면 줄을 길게 당겨 입과 코에 가까이 대면 된다.

이러한 산소마스크는 따로 산소를 구비해두는 것이 아닌, 산소를 합성하는 방식으로 산소를 공급해준다.

산소마스크는 내부에서 고체의 염손산칼륨과 염소산나트륨에 열을 가하는 방식으로 순수한 산소를 합성하는데, 이는 연소하기 쉬운 화합물들이기에 비행기에 한 번 불이 붙으면 큰 불로 번져 쉽게 진압이 되지 않는 것의 원인이기도 하다.\n\n\n''')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
