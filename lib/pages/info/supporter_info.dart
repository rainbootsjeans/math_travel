import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/info_plus.dart';

class SupporterInfoPage extends StatelessWidget {
  const SupporterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.027),
                const Text(
                  '이름을 누르면 지원단의 소감을 볼 수 있어요!',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
                ),
                SizedBox(
                  height: height * 0.054,
                ),
                Container(
                  width: width * 0.8,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      const Text(
                        '총괄',
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                          width: double.maxFinite,
                          color: white,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                child: const Text(
                                  '20929 진서현',
                                ),
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext contxt) {
                                        return InfoPlus(
                                            name: '소감',
                                            info: '수학여행 즐겁게 보내세요!!');
                                      });
                                },
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.054,
                ),
                ...supporterInfo.map(
                  (value) {
                    List<Map> detailRole = value['detailRole'];
                    return Column(
                      children: [
                        SupporterRoleLabel(
                          icons: value['icon'],
                          role: value['role'],
                        ),
                        ...detailRole.map((item) {
                          return Column(
                            children: [
                              SizedBox(height: height * 0.027),
                              SupporterInfoBox(
                                role: item['role'],
                                members: item['members'],
                              )
                            ],
                          );
                        }),
                        SizedBox(
                          height: height * 0.054,
                        ),
                      ],
                    );
                  },
                ),
                // SupporterRoleLabel(icons: Icons.school, role: '담당 선생님'),
                // SizedBox(height: height * 0.027),
                // Container(
                //   width: width * 0.8,
                //   color: Colors.blue,
                //   padding: const EdgeInsets.all(5),
                //   child: Column(
                //     children: [
                //       const Text(
                //         '책임지도',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       Container(
                //           width: double.maxFinite,
                //           color: white,
                //           padding: const EdgeInsets.all(8.0),
                //           child: Column(
                //             children: [
                //               GestureDetector(
                //                 child: const Text(
                //                   '김영중',
                //                 ),
                //                 onTap: () {
                //                   showDialog(
                //                       context: context,
                //                       builder: (BuildContext contxt) {
                //                         return InfoPlus(
                //                             name: '소감',
                //                             info:
                //                                 '즐겁고 유익하고 안전한 수학여행이 되도록 최선을 다했습니다!! 헉헉... 힘들다!! 재미없다고 하기만 해봐라!!');
                //                       });
                //                 },
                //               )
                //             ],
                //           )),
                //     ],
                //   ),
                // ),
                // SizedBox(height: height * 0.054),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//  {
//    'role': '총괄',
//    'memebers': [{'name':'진서현','schoolNums':'20000','thoughts':'임시용소감입니다.'}]
//  },
List<Map> supporterInfo = [
  {
    'role': '담당선생님',
    'icon': Icons.school,
    'detailRole': [
      {
        'role': '총괄지도',
        'members': [
          {
            'name': '김영중',
            'schoolNums': '\b',
            'thoughts':
                '즐겁고 유익하고 안전한 수학여행이 되도록 최선을 다했습니다!! 헉헉... 힘들다!! 재미없다고 하기만 해봐라!!'
          },
        ]
      },
    ]
  },
  {
    'role': '어플',
    'icon': Icons.computer_outlined,
    'detailRole': [
      {
        'role': '어플제작',
        'members': [
          {
            'name': '김단우',
            'schoolNums': '20203',
            'thoughts':
                '이번에 프로그래밍팀으로 수학여행 앱 제작에 참여하면서 첫 앱개발 경험이라 어렵지 않을까 생각했지만 잘끝낸거 같아서 다행이었다. 그리고 이번에 플러터를 접하게 되면서 앱개발의 허들이 높지 않다는 것을 알게됨. 여러분도 해보세요'
          },
          {
            'name': '장하진',
            'schoolNums': '20226',
            'thoughts': '지로보 선생님은 언제나 옳으십니다.\n때로는 더더욱 그렇습니다.'
          },
        ]
      },
    ]
  },
  {
    'role': '디자인',
    'icon': Icons.color_lens,
    'detailRole': [
      {
        'role': '표지, 아이콘, 책자 내부',
        'members': [
          {
            'name': '박주하',
            'schoolNums': '20815',
            'thoughts':
                '직접 책자를 디자인하고 제작하는 과정에서 어려움도 많고 여러 문제들도 많이 있었지만 그래도 과정 하나하나가 재밌고 뿌듯했다.'
          },
          {
            'name': '이다은',
            'schoolNums': '20917',
            'thoughts':
                '역할- 책자 표지, 내부 디자인 , 아이콘 소감- 의견을 조율해서 서로 만족하는 디자인을 만들어가는 것에 대해 배울 수 있는 좋은 경험이었고 학교에 도움이 되는 일이다보니 하고나니 뿌듯하고 디자인에 대한 경험치도 올라간 것 같다는 생각이 들었다. 같이 하는 작업들이 많다보니 협력에 대한 중요성을 알게되었고 이 활동으로 인해 많은 아이디어들을 생각해볼 수 있는 기회를 가지게 되었다.'
          },
          {
            'name': '현세빈',
            'schoolNums': '20829',
            'thoughts':
                '안내 책자와 앱 아이콘 등을 직접 디자인하는 기회를 통해 앱 아이콘에는 어떤 디자인이 적절할 지를 알 수 있는 기회였다고 생각한다.'
          },
          {
            'name': '황서연',
            'schoolNums': '20830',
            'thoughts':
                '평생 18살의 추억으로 남을 이번 여행을 직접 시각화할 수 있는 기회를 얻어 영광이었고, 책자를 통해 쌓은 기대감과 수학여행에 대한 로망이 우리 모두의 현실로 이루어지면 좋겠다.'
          },
        ]
      },
    ]
  },
  {
    'role': '책자',
    'icon': Icons.collections_bookmark_rounded,
    'detailRole': [
      {
        'role': '국어',
        'members': [
          {
            'name': '김유정',
            'schoolNums': '20505',
            'thoughts': '중세 국어의 흔적이 많이 남아있는 제주어를 알릴 수 있는 기회가 되어서 좋았습니다.'
          },
          {
            'name': '정우성',
            'schoolNums': '20230',
            'thoughts': '제주도로 수학여행을 떠난 당신에게 따뜻한 제주도의 문학적 감성을 심어줄 수 있기를.'
          },
        ]
      },
      {
        'role': '과학',
        'members': [
          {
            'name': '권시아',
            'schoolNums': '20502',
            'thoughts':
                '물리학을 잘 못해서 제가 해도 되는건가 걱정이 많았는데, 그만큼 열심히 했으니까 부족한 내용이 있어도 넘어가주세요.'
          },
          {
            'name': '이지우',
            'schoolNums': '20523',
            'thoughts':
                '이번 활동을 준비하며 큰 프로젝트를 여러 명이서 함께 조율하는 과정을 통해 팀워크와 소통의 중요성을 깨달을 수 있었다.'
          },
        ]
      },
      {
        'role': '역사',
        'members': [
          {
            'name': '김민재',
            'schoolNums': '20605',
            'thoughts':
                '수학여행 참여인단을 통해 제주도를 다양한 과목 분야에서 보고 관심을 갖게 되었다. 자료를 조사하고, 팀원들과 협력하여 학우 친구들을 위해 책자를 만든 것은 헌신적이기에 보람이 차는 활동이였던 것 같다.'
          },
        ]
      },
      {
        'role': '사회',
        'members': [
          {
            'name': '김시후',
            'schoolNums': '20805',
            'thoughts':
                '안녕하세요 최근 장발 탈출한 김시후입니다. 저는 자료조사를 맡았고요, 녹차 이야기 어쩌구랑 오설록이 제가 만든 겁니다. 근데 그 내용이 사실 딱히 중요한 정보는 아닌데, 뭐 원래 여행 가기 전에는 또 찾아보는 게 재밌잖아요. 참고로 전 롯데월드 처음 갔을 때 화장실 내부 사진까지 찾아본 경험이 있습니다. 그리고 이렇게라도 해야지 읽을 거 같아서 퀴즈에 상품도 걸어놨으니 봐주세요. 그렇다고 비싼 건 아니지만 뭐, 예 그렇습니다. 말은 이렇게 해도 열심히 했으니까 긍정적으로 검토해주시면 감사할 것 같습니다. 이걸 읽고 계실 분이라면 벌써 그건 다 읽으시긴 했을 것 같긴 하네요. 제가 괜한 얘기를 쓴 것 아닌가 싶습니다. 이게 참, 세교고등학교 학생분들 취향 맞추기가 쉽지 않습니다. 그런데 솔직히 저도 돌하르방 그리기랑 맛집, 오설록 구매목록 모아둔 책자랑, 줄글로 된 책자 둘 중에 하나만 골라라 하면 돌하르방 그리기를 고를 것 같기는 해요. 이건 취향 차이라기보다는 어쩔 수 없는 것 같습니다. 저도 30분짜리 영상 못 보고 쇼츠만 보거든요. 일단 내용이 많으면 보기가 싫은 거죠.\n 뭐 잡담은 여기까지 하고 제작과정 얘기 좀 해보겠습니다. 사실은 제작하기까지 저희가 우여곡절이 많았습니다. 일단 맨 처음에는 대략 6명쯤? 신청한 사람이 별로 없어서 어떡하나 싶기도 했는데요, 근데 그 뒤로 디자인팀도 생기고 자료 팀도 늘어나서 부담이 조금 줄기는 했습니다. 참고로 이때 총괄 신청한 사람이 셋인가였는데, 다 총괄 안 해도 된다고 해서 결국엔 서현님이 하게 되었습니다. 그런데 서현님도 총괄 안 해도 된다고 말한 분 중 하나였어요. 그래서 꽤나 부담스러워하셨던 기억이 나는데, 그런 거에 비해 잘하셨던 것 같습니다.\n 다시 본론으로 돌아와서, 저희가 인원이 정해지고, 방학 때 한 번 모인 적이 있었습니다. 그때 방학 때 작업 대부분을 끝내놓고, 개학 후에는 약간의 수정만 하기로 했습니다. 비율로 따지면 8대 2 정도 되겠네요. 근데 여느 프로젝트가 그렇듯, 마감 직전에야 작업 대부분을 끝냈습니다. 마찬가지로 비율로 보면 6대 4 정도가 되겠네요. 이 부분에 대해서는 저도 할 말이 없습니다. 자료조사가 우선 완료되어야 디자인팀이 책자를 제작하고, 개발팀이 어플에 내용을 넣는 것인데, 자료조사가 밀리면서 작업 대부분이 연기되게 되었습니다. 이에 대해 총괄, 디자인팀, 개발팀께 사과를 드리고 싶습니다.\n 그 후, 자료조사가 끝나고는 자료와 사진을 디자인팀에 넘기면, 디자인팀이 책자를 꾸며주시기로 했습니다. 근데 사실 디자인팀이 제대로 하기 전에 제가 좀 꾸며봤습니다. 근데 하다 보니 재미가 있더라고요. 그래서 이걸 디자인팀으로 옮겨야 하나 말아야 하나 잠시 고민한 적이 있었는데, 비포 애프터를 보니까 제가 디자인팀으로 안 가길 다행이었다는 생각이 들었습니다. 아무래도 제가 그쪽 전공은 아니니까 제가 했으면 여러분들이 보기에 좀 곤란했을 것 같네요. 이런 글을 유심히 읽을 사람은 없겠지만, 혹시라도 제가 했던 게 궁금하신 분은 카톡 아이디 ‘afterpoem’으로 연락 주시면 제가 아무 말도 없이 제가 만들었던 거 보내드리겠습니다. 나름 잘 만들긴 했거든요. 일종의 이스터에그 같은 거라고 생각하시고 한 번 구경하는 것도 나쁘지 않은 것 같습니다.\n 사담이 기네요. 아무튼, 이렇게 자료팀이 본인 거를 대충 마무리 짓고 나서는 디자인팀이 작업했는데요, 디자인팀이 고생을 많이 했습니다. 자료팀이 자료를 넘길 때, 책자에 들어갈 사진 같은 요소를 직접 만들어버려서 수정이 곤란한 경우도 꽤 있었고요, 어플에 들어갈 아이콘 수정도 꽤 했던 것으로 기억합니다. 아무래도 그림이나 디자인은 대부분이 수작업이다 보니 각 작업의 피로도가 크지 않았나 싶습니다.\n 다 끝난 후에는 제가 딱히 할 일은 없었던 것 같아요. 이 글을 쓰는 9월 3일에도 디자인팀과 개발팀, 총수님은 바빠 보이긴 합니다. 아무래도 전문직이다 보니 일해야 할 게 많은가 봅니다. 저는 글쟁이라서 딸깍, 딸깍하고 끝내긴 했지만요. 이러는 게 조금 미안해서 저번엔 표지 인쇄 관련 얘기가 나왔을 때 참견을 좀 하긴 했습니다. 그런데 이것도 제가 디자인팀과 총수님이랑 친분이 있어서 그렇지, 아니면 도움을 주기가 쉽지 않은 것 같아요. 그런데 최근에 인쇄까지 마친 결과물이 나왔어요. 저는 아직 보지는 못했지만, 디자인팀이랑 총수님은 보셨다고 합니다. 다들 고생한 만큼 뿌듯해하는 것 같았어요. 저는 딱히 크게 한 건 없지만 괜히 흐뭇하고 그랬습니다.\n 힘들었고 신경 써야 할 게 생각보다 많았지만, 즐거웠습니다. 제가 웬만한 학교 활동은 학생들에게 딱히 추천드리지는 않는데, 이건 한 번은 해볼 만 한 것 같아요. 제가 중학교 때 학생회 활동도 해보고, 학급회장, 사회개선 프로젝트, 학생주도 프로젝트 봉사활동, 등 활동들을 정말 많이 해보았지만, 이번 활동이 제일 좋다고 말할 수 있습니다. 그 정도로 재밌었어요.\n 마지막으로 제작 기간동안 많은 도움주신 우리 영중쌤, 총괄 진서현님, 표지와 책자 디자인한 디자인 팀, 어플 만들어주고 팀 이끌어준 개발팀, 그리고 제 파트 꾸며준 박주하님, 그리고 저희가 열심히 만든 책자 읽어주신 여러분들 감사드립니다.'
          },
          {
            'name': '이태인',
            'schoolNums': '20420',
            'thoughts': '세교고 학생들에게 제가 조사한 제주도의 정보를 전달할 수 있어 뜻깊었습니다!!!'
          },
        ]
      },
    ]
  }
];

class SupporterInfoBox extends StatelessWidget {
  String role;
  List members;
  // String name;
  // String nums;
  // Stringthoughts;

  SupporterInfoBox({
    super.key,
    required this.role,
    required this.members,
    // required this.name,
    // required this.nums,
    // required this.thoughts
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.8,
      color: Colors.blue,
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            role,
            style: const TextStyle(fontSize: 20),
          ),
          Container(
              width: double.maxFinite,
              color: white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ...members.map((value) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext contxt) {
                                return InfoPlus(
                                    name: '소감',
                                    info: value['thoughts'] ?? 'Tlqkf');
                              });
                        },
                        child: Text('${value['schoolNums']} ${value['name']}'),
                      ),
                    );
                  })
                ],
              )),
        ],
      ),
    );
  }
}

class SupporterRoleLabel extends StatelessWidget {
  IconData icons;
  String role;
  SupporterRoleLabel({super.key, required this.icons, required this.role});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        alignment: Alignment.center,
        width: width * 0.8,
        height: height * 0.054,
        decoration: BoxDecoration(
            color: const Color(0xff3f427e),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: height * 0.042,
              height: height * 0.042,
              decoration: BoxDecoration(
                  color: const Color(0xfff7f4ae),
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(icons),
            ),
            Text(
              '$role   ',
              style: TextStyle(
                  color: const Color(0xfff7f4ae),
                  fontSize: height * 0.054 * 0.5),
            ),
            const SizedBox()
          ],
        ));
  }
}
