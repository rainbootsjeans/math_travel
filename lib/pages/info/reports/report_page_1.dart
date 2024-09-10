import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportPage1 extends StatelessWidget {
  const ReportPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '01',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "제주도의 소설 및 시 소개",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "제주도의 소설 및 시를 통한 제주 고유의 문학적 감성 공유",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 99, 99, 99),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Text.rich(
                  TextSpan(
                    text: '시 제목 : ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\'제주, 4월\' / 정일근',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '봄밤에 휘파람새 우는 소리 듣는다\n\n휫 휫 훗훗… 누군가 슬픈 꽃 같은 입술로\n\n조심스레 휘파람 부는 것 같다\n\n제주 이모에게 그런 휘파람 불어주던\n\n눈빛 깊은 젊은 남자 있었다\n\n4월이었고 이모에게는 첫사랑이었다\n\n단 한 번의 휘파람 단 한 번의 사랑\n\n그리고 서러운 세월 하얗게 흘러갔다\n\n제주 이모 가는귀먹은 지 오래지만\n\n4월에 우는 휘파람새 소리는 다 듣는다\n\n밤에 휘파람새 소리는 다 듣는다\n\n밤에 휘파람새 찾아와 울고\n\n서툴게 서툴게 따라 부는 이모의 휘파람 소리\n\n그런 밤에 약속처럼 봄비 봄비 내린다\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  '작품 설명 및 시 해석',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 8),
                const Text.rich(
                  TextSpan(
                    text: '작품 설명 : ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text:
                            '이 시는 1948년 4월 3일 제주에서 일어난 제주 4.3 사건을 바탕으로 지어진 시로, 당시 이 사건으로 인해 벌어진 학살의 현장을 잊을 수 없는 기억으로 남아 비유적으로 작성한 것입니다. 제주 4.3 사건은 한국의 해방 이후 사회주의 세력과 우파 세력의 갈등으로 인해 야기되어 남로당과 국가의 토벌대가 무력 충돌 및 진압과정에서 주민들이 학살당한 사건입니다.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    text: '\n\n시 해석 : ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text:
                            '이 시는 제주 4.3 사건을 당시 환경과 자연물에 빗대어 표현한 부분이 많은 시입니다. 먼저 작품 속 등장하는 눈빛 깊은 젊은 남자가 다음 문장인 이모의 첫사랑이라고 나타내었습니다. 이는 이모가 기억하는 당시 4월의 끔찍한 전장의 기억과 수많은 사람들의 고통을 빗대어 잊을 수 없는 첫사랑과 같이 표현한 것으로도 해석할 수 있고, 또는 4,3 사건에 휘말린 이모가 사랑했던 젊은 청년을 의미한 것으로도 해석할 수 있습니다. 슬픈 꽃, 서러운 세월, 봄비 등 비관적이고 어두운 느낌의 감성을 나타내어 4.3 사건의 슬픈 내막을 나타낸다고 볼 수 있습니다. 마지막으로 시의 주요 용어인 휘파람은 4.3 사건의 시련을 이겨낸 극복을 의미하여 그런 아픔이 있었음에도 불구하고 결국에는 이겨내어 잊어서는 안 될 기억이라는 것을 강조한다고 볼 수 있습니다. 비록 우리는 제주도를 여행으로써 즐기러 가는 것이지만, 그 땅에서 일어난 역사적 사실과 이러한 사실을 바탕으로 만들어진 문학적 내용들을 잊어서는 안된다는 것을 말하고 싶습니다.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Text.rich(
                  TextSpan(
                    text: '소설 제목 : ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                    children: <TextSpan>[
                      TextSpan(
                        text: '<소설 제주>',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text.rich(
                  TextSpan(
                    text: '책 소개 : ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text:
                            '<소설 제주> 제주에서 반짝이는 찰나의 순간들을 담은 젊은 작가 6인이 전하는 감성 소설집',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                const Text.rich(
                  TextSpan(
                    text: '책 추천 이유 : ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text:
                            '제주시 구좌읍에서 반짝 열리는 벨롱장, 옥빛 바다가 수려한 협재와 수많은 오름이 있는 송당 그리고 새순이 가득 돋아 있는 사려니 숲과 절물 휴양림, 강정마을과 용머리해안까지 돌고 나면 문득 가방을 싸 제주에 가고 싶다는 생각이 들지도 모르는 젊은 작가 6인의 테마소설집 《소설 제주》가 출간되었습니다. 소설가 전석순 김경희 SOOJA 이은선 윤이형 구병모가 전하는 한여름 반짝이는 바다처럼 제주에서의 찰나의 순간들을 담은 이 소설집은 정신없이 돌아가는 일상 속에서 어느 날 문득, 지금 자기가 서 있는 곳이 어디인지 모를 때 자신의 내면을 들여다볼 수 있게 하는 하나의 풍경이 되어줄 수 있습니다. 《소설 제주》를 통해 언제 터질지 모를 불안이라는 풍선을 가슴에 품고 사는 우리들에게 조금이나마 휴안이 되고 삶의 안식을 찾을 수 있는 기회를 찾았으면 좋겠습니다. 또한 소설을 읽으면서 간접적으로 느끼는 제주도 고유의 풍경과 장소의 아름다움을 아는 것도 가능하니, 꼭 읽으시는 것을 추천합니다!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                //사진 필요할 경우
                Container(
                  width: double.maxFinite,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Image(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0vSp3qmxdu_ipyJRl0RbJZZ7BG6GIkhh7rA&s"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
