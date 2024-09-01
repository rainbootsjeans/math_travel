import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/widgets/paragraph.dart';
import 'package:math_travel/widgets/report_title.dart';

class JejuLanStroy extends StatelessWidget {
  const JejuLanStroy({super.key});

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
                  ReportTitle(title: '혼저옵서예!', boldTitle: '제주어 알아보기'),
                  SizedBox(height: height * 0.05),
                  const Image(
                      image: AssetImage(
                          'assets/report_assets/learn_jeju_lan/거덕인줄도몰르고.png')),
                  SizedBox(height: height * 0.025),
                  Paragraph(
                      size: 17.5,
                      title: '제주어가 뭔가요?',
                      content: // 줄바꿈 감잡음
                          '\n제주어(제주방언)은 표준어와 다른 어휘, 독자적인 문법을 사용하기 때문에 제주도에서는 독자적 언어로 취급해요.\n\n그래서 표준어 화자들 제주어를 잘 알아듣지 못하기도 한답니다.\n\n제주어 화자의 인터뷰가 뉴스에 나오자 못알아 듣겠다며 화제가 되기도 했죠.\n\n\n고유의 어휘나, 문법 체계를 갖고 있고, 표준어 화자와 제주 방언 화자 간의 상호의사소통성이 낮아 제주도에서는 제주 방언이 아닌, 독자성을 가진 언어로 보고 제주어로 명명하고 있다.\n\n\n'),
                  Paragraph(
                      size: 17.5,
                      title: '4.3사건과 관련있다고요?',
                      content:
                          '\n제주어의 낮은 상호의사소통성을 이용하여 한국전쟁 당시 북한에게 감청당하자 제주어로 무선 교신하기도 했다.\n\n\n"글로 죽 가당 보믄 큰큰헌 소낭이 나옵니다게. 그디서 노단펜으로 돌아성 돌으멍 갑서" \n\n("그리로 죽 가다 보면 커다란 소나무가 나옵니다. 거기서 오른편으로 돌아서 달려가십시오.")\n\n글로 여러번 읽어 봐도 이해하기 쉽지 않다.\n\n역사와 전통을 가진 제주어지만, 4∙3사건 이후 제주어를 쓰면 출신지가 드러난다는  인식의 영향과 더불어 표준어를 지향하는 언어 인식 탓에 빠르게 사라지고 있는 추세이다.\n\n\n'),
                  // 폰트 바꾸면 해결되지 않을까 했다. 근데 그냥 vscode가 ᄃᆞᆯ,ᄂᆞ을 못 받아들이는 것 같다. ᄂᆞ.length 하면 2나옴
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: RichText(
//                       text: const TextSpan(
//                         style: TextStyle(
//                             color: black,
//                             fontSize: 17.5,
//                             fontFamily: 'GmarketSans',
//                             fontWeight: FontWeight.w300),
//                         children: [
//                           TextSpan(
//                               text: '4.3사건과 관련있다고요?',
//                               style: TextStyle(fontWeight: FontWeight.w500)),
//                           TextSpan(text: '\n'),
//                           TextSpan(
//                             text: '''

// 제주어의 낮은 상호의사소통성을 이용하여 한국전쟁 당시 북한에게 감청당하자 제주어로 무선 교신하기도 했다.

// "글로 죽 가당 보믄 큰큰헌 소낭이 나옵니다게. 그디서''',
//                           ),
//                           TextSpan(
//                               text: 'ᄂᆞ',
//                               style: TextStyle(fontFamily: 'YetHangul')),
//                           TextSpan(text: '단펜으로 돌아성'),
//                           TextSpan(
//                               text: 'ᄃᆞᆯ',
//                               style: TextStyle(fontFamily: 'YetHangul')),
//                           TextSpan(
//                             text: '''으멍 갑서"

// ("그리로 죽 가다 보면 커다란 소나무가 나옵니다. 거기서 오른편으로 돌아서 달려가십시오.")

// 글로 여러번 읽어 봐도 이해하기 쉽지 않다.

// 역사와 전통을 가진 제주어지만, 4∙3사건 이후 제주어를 쓰면 출신지가 드러난다는  인식의 영향과 더불어 표준어를 지향하는 언어 인식 탓에 빠르게 사라지고 있는 추세이다.\n\n\n''',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

                  Paragraph(
                      size: 17.5,
                      title: '아래아가 뭔가요?',
                      content:
                          '\n제주어에서는 현대 국어의 자모와 더불어 현대 국어에서는 사라진 옛한글인ㆍ(아래아), ᆢ(이아래아)를 사용합니다.\n\n 표준어와 달리 제주어에서의 ㆍ는 음가가 있으며, ᆢ는 주로 ‘ㅛ’에 가깝게 발음된다.\n\n여기서는 표기 오류(글자 깨짐 등)으로 인해 ㆍ는 \'ㅏ\' 나 \'ㅗ\', ᆢ는 \'ㅛ\'로 표기했다. 하다의 경우 아래아 표기임을 명시하지 않았다.\n\n\n'),
//'''내용''' 이거 파이썬만 되는줄 알았는데
// 이런식으로 vs에서 내용 쓰고 편집하려면 '''내용'''이 나을듯?

                  Paragraph(
                    size: 17.5,
                    title: '발음은 어떻게 하나요?',
                    content: '''

1. ㅜ, ㅗ를 천천히 연달아 발음해본다.두세 번 정도 해보며 혀의 높낮이, 입술 모양을 익혀보자.

2. 혀의 위치와 입술 모양을 ‘오’과 같이 유지한 채, 입을 벌리며 혀의 위치를 내린다.

3. ㅗ와 ㅓ 사이의 애매한 발음이 나는 것 같다면 성공!\n\n\n''',
                  ),
                  Paragraph(
                    size: 17.5,
                    title: '제주어의 표기상 특징',
                    content: '''

제주어에서는 현대 국어의 자모와 더불어 현대 국어에서는 사라진 옛한글인ㆍ(아래아), ᆢ(이아래아)가 남아있어요. 제주어에서의 ㆍ는 음가가 남아있고, ᆢ는 주로 ‘ㅛ’ 에 가깝게 발음된답니다.

제주어에는 ‘ㅚ,ㅢ’가 한자어에만 쓰인다. 한자어를 제외하곤 ‘ㅞ,ㅣ’로 표기한다. 외삼촌, 외가집은 웨삼촌, 웨가집이 된다.\n\n\n''',
                  ),
                  Paragraph(
                    size: 17.5,
                    title: '제주어의 발음상 특징',
                    content: '''

일반적으로 젊은 한국어 화자들은 간호학, 실학과 같이 첫음절 이외의 초성에 ㅎ이 오는 단어들을 [가노학],[시락]에 가깝게, ㅎ의 음가가 약하게 발음하지만, 제주어 화자들은 'ㅎ'음가를 정확히 살린 표준발음인 [간호학],[실학]으로 발음해요.

표준국어대사전을 켜 표준 발음을 들어보면, 간'호'학이 명확히 들린답니다.\n\n\n''',
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const JejuVoca());
                    },
                    child: Box(
                      height: height * 0.081,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text('  제주도 어휘 알아보기'), Text('>  ')],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.0125),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext contxt) {
                          return Center(
                              child: Box(
                            height: height * 0.7,
                            width: width * 0.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: const AssetImage(
                                        'assets/report_assets/learn_jeju_lan/십자말풀이정답.png'),
                                    width: width * 0.8),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Box(
                                      width: width / 3,
                                      height: height * 0.05,
                                      child: const Center(
                                        child: Text(
                                          '확인',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: 'GmarketSans',
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ));
                        },
                      );
                    },
                    child: Box(
                      height: height * 0.081,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text('  십자말풀이 정답 보기'), Text('>  ')],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> jejuVoca = [
  {
    "word": "감저",
    "mean": "고구마",
    "pumsa": "명사",
    "desc": "표준어의 감자는 고구마에서 의미가 이동된 것. 제주어에선 이동하지 않고 그대로 남았다. 감자는 제주어로 지슬이다."
  },
  {"word": "경", "mean": "그렇게", "pumsa": "부사", "desc": null},
  {
    "word": "곧다",
    "mean": "말하다",
    "pumsa": "동사",
    "desc":
        "어미 환경에 따라 골다로도 쓰인다. 고르랜 골아(고르라고 말해)라는 식. 표준어 '가로다'와 어원을 같이 한다. 아래아 표기를 쓴다."
  },
  {
    "word": "낭",
    "mean": "나무",
    "pumsa": "명사",
    "desc": "소낭은 소나무, 웨니낭은 복숭아 나무 이런 식. 복숭아는 보숭게라 한다."
  },
  {
    "word": "돔베",
    "mean": "도마",
    "pumsa": "명사",
    "desc": "고기 국수 집에서 보는 돔베고기는 삶은 돼지고기를 그릇에 옮겨 담지 않고 도마 위에 두고 썰어 먹는 음식이다."
  },
  {
    "word": "독새기",
    "mean": "계란",
    "pumsa": "명사",
    "desc": "요새는 표준어 계란을 더 많이 쓰는 추세다. 아래아 표기를 쓴다."
  },
  {"word": "똣똣하다", "mean": "따뜻하다", "pumsa": "형용사", "desc": "아래아 표기를 쓴다."},
  {
    "word": "멘도롱하다",
    "mean": "따뜻하다, 미지근하다",
    "pumsa": "형용사",
    "desc": "똣똣하다가 더 온도가 높다."
  },
  {"word": "메께라", "mean": "아이고", "pumsa": "감탄사", "desc": null},
  {"word": "멜젓", "mean": "멸치젓", "pumsa": "명사", "desc": null},
  {
    "word": "몸냥",
    "mean": "마음대로",
    "pumsa": "부사",
    "desc": "지냥, 자기냥은 자기 마음대로라는 뜻이다."
  },
  {"word": "무사", "mean": "왜", "pumsa": "부사", "desc": null},
  {"word": "보숭게", "mean": "복숭아", "pumsa": "명사", "desc": null},
  {
    "word": "삼춘",
    "mean": "손윗사람",
    "pumsa": "명사",
    "desc": "남녀 구분 없이 모두 삼춘이라 부른다. 사전 등재는 삼촌으로 되어있다."
  },
  {"word": "속다", "mean": "수고하다", "pumsa": "동사", "desc": "폭삭 속았수다의 속다가 이것이다."},
  {"word": "영", "mean": "이렇게", "pumsa": "부사", "desc": null},
  {
    "word": "오름",
    "mean": "산봉우리",
    "pumsa": "명사",
    "desc": "오름은 산봉우리의 순우리말이지만 이젠 거의 제주에서만 쓰인다. 제주의 오름은 대부분 한라산의 기생화산이다."
  },
  {"word": "요망지다", "mean": "야무지다, 똘똘하다", "pumsa": "형용사", "desc": "아래아 표기를 쓴다."},
  {
    "word": "아깝다",
    "mean": "귀엽다, 사랑스럽다",
    "pumsa": "형용사",
    "desc": "아깝다가 사전 등재어이나 실제 발음은 아꼽다(아래아 표기)에 가까운 것 같다."
  },
  {"word": "우터하다", "mean": "과하다, 지나치다", "pumsa": "형용사", "desc": null},
  {"word": "지름", "mean": "기름", "pumsa": "명사", "desc": null},
  {"word": "쪽잡하다", "mean": "좁다", "pumsa": "형용사", "desc": "더욱 좁다는 식으로 주로 쓰인다."},
  {
    "word": "촐레",
    "mean": "반찬",
    "pumsa": "명사",
    "desc": "주로 젓갈류를 이르는 말이다. 아래아 표기를 쓴다."
  },
  {"word": "하르방", "mean": "할아버지", "pumsa": "명사", "desc": "돌하르방은 돌로 만든 할아버지이다."},
  {"word": "하영", "mean": "많이", "pumsa": "부사", "desc": "중세국어의 하다(많다)가 남아있다."},
  {"word": "호미", "mean": "낫", "pumsa": "명사", "desc": "호미는 제주어로 골갱이라고 한다."},
  {"word": "호설", "mean": "조금, 약간", "pumsa": "부사", "desc": "아래아 표기를 쓴다."},
  {
    "word": "혼저",
    "mean": "어서",
    "pumsa": "부사",
    "desc": "혼저옵서예의 혼저가 이것이다. 표준어로는 직역해 어서 오세요. 아래아 표기를 쓴다."
  }
];

class JejuVoca extends StatelessWidget {
  const JejuVoca({super.key});

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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReportTitle(
                      boldTitle: '   제주어 어휘',
                      title: ' ',
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                Column(
                    children: jejuVoca.map((vocas) {
                  return Column(
                    children: [
                      Voca(
                          word: vocas['word'],
                          mean: vocas['mean'],
                          pumsa: vocas['pumsa'],
                          decs: vocas['desc'] ?? ''),
                      const Divider(color: Color.fromARGB(255, 215, 215, 215))
                    ],
                  );
                }).toList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Voca extends StatelessWidget {
  String word;
  String mean;
  String pumsa;
  String decs;
  Voca(
      {super.key,
      required this.word,
      required this.mean,
      required this.pumsa,
      required this.decs});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: height * 0.135,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              //똣똣하다", "mean": "따뜻하다", "pumsa": "형용사", "desc": "아래아 표기를 쓴다
              text: TextSpan(
                  style: const TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'GmarketSans'),
                  children: [
                TextSpan(
                    text: word,
                    style: const TextStyle(fontWeight: FontWeight.w500)),
                const TextSpan(text: '\n'),
                TextSpan(
                    text: pumsa,
                    style: const TextStyle(
                        color: blueShadow, backgroundColor: blueBright)),
                TextSpan(text: '   $mean')
              ])),
          const SizedBox(
            height: 7,
          ),
          Text(
            decs,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w100,
                fontFamily: 'GmarketSans'),
          )
        ],
      ),
    );
  }
}

class CrosswordAnswer extends StatelessWidget {
  const CrosswordAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: const SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
