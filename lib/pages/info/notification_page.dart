import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/paragraph.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double size = 20;
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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: black,
                          fontSize: size,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GmarketSans',
                        ),
                        children: [
                          const TextSpan(
                              text: '안전 유의 사항',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(
                            text: '\n가. 주제별체험학습',
                          ),
                          TextSpan(
                            text: '(수학여행)',
                            style: TextStyle(fontSize: size / 2),
                          ),
                          const TextSpan(text: '''계획에 성실하게 참여하여 질서 유지와 안전에 최선
을 다하도록 한다.

나. 인솔 지도교사의 안전 지도 사항에 잘 따르고 지시를 준수한다.

다. 학생 출입 금지 지역이나 유해한 장소나 위험 시설물이나 장소에는 접근하지 않는다.

라. 차량 이동 시에는 안전띠를 꼭 착용하고, 운전자의 안전 운행에 방해가 되는 행위를 하지 않는다.

마. 공공의 도덕 질서를 지켜 안전하고 유쾌한 체험활동이 되도록 한다.

바. 친구들과 지나치게 심한 장난을 삼가한다.

사. 음주·도박·흡연 등의 행위를 하지 말고, 숙소 내에서 질서를 잘 지킨다.

아. 숙소에서 시설물 보호와 자연물 보호에 최선을 다한다.

자. 주제별체험학습'''),
                          TextSpan(
                            text: '(수학여행)',
                            style: TextStyle(fontSize: size / 2),
                          ),
                          const TextSpan(
                              text: '''지에서 타학교 학생들이나 관광객들과 마찰이 없도록 서로에게 예의를 지킨다.

카. 각종 돌발 사고가 발생하였을 경우에는 자의적 판단을 하지 말고, 반드시 인솔지도교사에게 신고하여 조치를 받도록 한다.

타. 부모님께 1회 이상 안부 전화를 드려 걱정하지 않도록 한다.

파. 성희롱이나 성적 수치심을 주는 행동을 하지 않으며 학생의 신분에 어긋나는 물품 소지나 행위를 하지 않는다.

하. 반드시 메모지나 필기구를 준비하도록 하여 활동 수기나 보고서 등을 작성할 때 참고 자료로 이용할 수 있도록 한다.\n\n\n'''),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: black,
                          fontSize: size,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GmarketSans',
                        ),
                        children: [
                          const TextSpan(
                              text: '버스 이동시 안전수칙 및 주의사항',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(
                            text: '''

가. 출발 10분 전에 출발 지점에 도착하여 탑승 완료, 출발 준비를 마치도록 한다.

나. 집합 시간을 준수하고 반장은 승차 전후에 반드시 인원 점검을 한 후 지도교사에게 보고한다.

다. 각 반별 또는 탑승 계획에 의해 차량에 탑승한 후 차량 이동시에는 반드시 안전띠를 착용하여야 한다.

라. 차내에서는 안전 운행을 위하여 차내의 안전 사항과 예절을 지킨다.''',
                          ),
                          TextSpan(
                            text:
                                '  차량 출발 후 완전히 정차하기 전까지 좌석에서 일어나지 않도록 운행 중에는 이동 금지',
                            style: TextStyle(fontSize: size / 2),
                          ),
                          const TextSpan(text: '''


마. 손이나 머리 등 신체 부위를 차창 밖으로 내놓지 않도록 한다.

바. 차창 밖으로 오물'''),
                          TextSpan(
                            text: '(휴지나 비닐봉지, 깡통 등)',
                            style: TextStyle(fontSize: size / 2),
                          ),
                          const TextSpan(text: '''을 절대 버리지 않는다.

사. 멀미가 있는 학생은 반드시 미리 멀미약을 복용하도록 준비하고, 차내의 청결유지와 만약을 위하여 휴지와 오물 비닐 봉투를 준비하도록 한다.

아. 휴식을 위한 차량 정차 시에 출발 시간을 숙지하여 시간에 늦는 일이 없도록 한다.

자. 휴게소에서는 반드시 좌우를 살피고 보행로를 이용하여 이동한다.

차. 차량 안에 비치되어 있는 비상탈출용 망치의 위치와 소화기의 위치를 확인한다.

카. 비상망치 옆 학생은 비상시 신속히 창문을 깨고 탈출할 수 있도록 한다.

타. 비상탈출용 망치는 비상시에만 사용하며, 평상시에는 만지거나 장난치지 않는다.\n\n\n'''),
                        ],
                      ),
                    ),
                  ),
                  Paragraph(title: '항공기 이동시 안전수칙 및 주의 사항', content: '''

가. 비행기 이·착륙 시에는 반드시 안전띠를 착용하며, 예상하지 못한 상황에서 기체가 흔들릴 수 있으므로 안전띠를 착용한다.

나. 비행기에 탑승하면 산소마스크, 구명조끼의 위치를 확인하고 승무원의 설명 및 좌석에 비치된 안내 자료를 읽어 사용법을 숙지한다.

다. 비행기 좌석의 안전띠 착용 신호를 확인하고, 비상시에는 두 손을 포개 앞좌석에대고 팔 사이로 머리를 감싸안아 몸을 웅크리는 충격 방지 자세를 취함.

라. 비행기가 이륙하고 착륙할 때는 테이블 사용 전 상태로 위치시키고, 젖혀 놓은 등받이는 최대한 직각으로 세운다. 의자가 뒤로 젖혀진 상태로 사고가 나면 충격의범위가 넓어 사람들이 많이 다칠 우려가 있음.

마. 비행 전 승무원의 안내방송에 귀를 기울이고 상황 발생 시 승무원의 안내에 따른다.\n\n\n'''),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: black,
                          fontSize: size,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GmarketSans',
                        ),
                        children: [
                          const TextSpan(
                              text: '숙소에서의 안전수칙 및 주의 사항',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(
                            text: '''

가. 숙소 내의 시설 가운데 위험 요소를 미리 파악하고, 숙소 내에서 지나친 장난을 삼가해야 한다.

나. 화재 등의 재난 발생 시 자신의 방 위치에서 이동해야 할 대피로를 사전에 미리파악한다.

다. 각자 소지품 가운데 귀중품''',
                          ),
                          TextSpan(
                            text: '(카메라, MP3, 스마트폰, 현금, 각종 스마트기기 등)',
                            style: TextStyle(fontSize: size / 2),
                          ),
                          const TextSpan(
                              text:
                                  '''은 담임교사에게 보관하도록 부탁하고, 개인이 소지 할 때에는 분실하지 않도록 주의를 다한다.

라. 각 숙소에는 방장을 선정 숙소 내 생활 태도와 시설물 파손 금지, 각 전달 사항 등 책임지고 질서 유지에 최선을 다하도록 한다.

마. 숙소에서 혹시라도 발생할 수 있는 사고에 대비하여 본부나 지도교사의 숙소 위치를 숙지하여 만약의 사고에 신속하게 신고하도록 한다.

바. 숙소에서는 청소 당번을 정하여 깨끗하고 쾌적하게 청결을 유지하도록 하고, 시설물을 내 것과 같이 아껴 쓰도록 한다.

사. 숙소 내의 기물을 파손하였을 경우에는 파손한 사람이 변상하도록 한다.

아. 숙소 벽이나 바닥 등에 낙서를 하지 말고, 베개, 침구 등은 취침 시에만 사용하고 평상시에는 깨끗하게 정리 정돈한다.

자. 야간에 환자 발생 때에는 신속하게 지도교사나 안전요원에게 알려 응급조치토록한다.

차. 숙소 내에서 학생 신분에 어긋나는 행위'''),
                          TextSpan(
                            text: '(음주, 흡연, 도박, 고성방가 등)',
                            style: TextStyle(fontSize: size / 2),
                          ),
                          const TextSpan(text: '''는 절대로 하지 않는다.

카. 만약 학생 신분에 어긋나는 불미스러운 사고가 발생하였을 경우에는 귀교하여 교칙에 따라 처분됨을 명심한다.

타. 정해진 취침 시간이나 기상 시간을 철저하게 지킨다.\n\n\n''')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MustObservePadge extends StatelessWidget {
  const MustObservePadge({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle highlights = const TextStyle(
        backgroundColor: Color.fromARGB(255, 255, 220, 130),
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline);
    TextStyle underlineBold = const TextStyle(
        fontWeight: FontWeight.w500, decoration: TextDecoration.underline);
    double size = 20;
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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: black,
                          fontSize: size,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GmarketSans',
                        ),
                        children: [
                          const TextSpan(
                              text: '버스 이용할 때 주의사항',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n'),
                          const TextSpan(text: '''

◆ 여행 기간 동안 ''', style: TextStyle(fontWeight: FontWeight.w500)),
                          TextSpan(
                            text: '본인이 탑승할 차량 번호를 반드시 확인한다.',
                            style: underlineBold,
                          ),
                          const TextSpan(text: '''


◆ '''),
                          TextSpan(text: '''안전띠를 반드시 착용''', style: highlights),
                          TextSpan(
                            text: '하고, 운행 중 버스 안에서 이동하지 않는다.',
                            style: underlineBold,
                          ),
                          const TextSpan(text: '''


◆ 차창 밖으로 손이나 머리를 내밀지 않는다.

◆ 한 장소에서 다른 장소로 이동할 때는 '''),
                          TextSpan(
                              text: '신속히 제자리로 돌아와 인원점검을 받는다.',
                              style: underlineBold),
                          const TextSpan(text: '\n\n◆ '),
                          TextSpan(
                              text: '귀중품(지갑과 핸드폰 등)은 언제나 자신이 가지고 다닌다.',
                              style: highlights),
                          const TextSpan(text: '''


◆ 버스 안에서 생긴 쓰레기는 내릴 때 가지고 내려 휴지통에 버린다. 

◆ 차량 운행 시에는 운전자의 안전 운행에 방해가 되는 행위를 하지 않는다.\n\n\n''')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: black,
                          fontSize: size,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GmarketSans',
                        ),
                        children: const [
                          TextSpan(
                              text: '자연 보호 및 질서 지키기',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          TextSpan(text: '''


◆ 자연 보호에 앞장서며 문화재를 때 훼손하거나 만지지 않는다.

◆ 출입금지구역에 들어가지 않으며, '''),
                          TextSpan(
                              text: '지역 주민에게 해가 되는 행동을 하지 않는다. ',
                              style: TextStyle(
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                              text:
                                  '\n\n◆ 휴식을 취하거나 식사한 자리는 깨끗이 치우고 이동 시에는 질서를 지키며 학생으로서의 품위를 지킨다.\n\n\n'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: black,
                          fontSize: size,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'GmarketSans',
                        ),
                        children: [
                          const TextSpan(
                              text: '안전사고 예방',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          const TextSpan(text: '\n\n◆ 위험한 곳은 가지 않으며 '),
                          TextSpan(
                              text: '반드시 조별로 움직인다. (개인 행동 일절 금지)',
                              style: underlineBold),
                          const TextSpan(
                              text: '\n\n◆ 자신의 몸을 아끼고 보호하며, 위험한 행동을 하지 않는다.'),
                          const TextSpan(text: '\n\n◆ '),
                          TextSpan(
                              text: '체험 중 일어나는 작은 일이라도 선생님께 알려 사고를 예방',
                              style: highlights),
                          TextSpan(text: '한다.', style: underlineBold),
                          const TextSpan(text: '\n\n◆ '),
                          TextSpan(text: '일행과 떨어져 ', style: underlineBold),
                          TextSpan(
                              text: '교사 허락 없이 개인행동을 하지 않는다.\n\n\n',
                              style: highlights)
                        ],
                      ),
                    ),
                  ),
                  Paragraph(title: '성범죄(성희롱, 성추행, 성폭력) 예방교육', content: '''

◆ 성희롱, 성폭력, 성문제를 야기할 수 있는 행동을 하지 않는다.

◆ 싫은 것은 상대방에게 명확한 의사표시를 하고 그만둘 것을 요구한다. 

◆ 누군가 나의 몸을 만지거나 싫은 느낌이 들면 도망을 가거나 소리를 질러 도움을 청한다.\n\n\n'''),
                  Paragraph(title: '그밖에 주의할 일', content: '''

◆ 정해진 시간은 반드시 지키도록 노력한다. 

◆ 복장은 학생 신분에 어울리도록 단정하게 입는다. 

◆ 몸이 아프거나 이상이 있을 때는 선생님께 알린다. 

◆ 각종 돌발 사고 발생 시에는 인솔 교사에게 신속히 연락하고 인솔 교사의 안내를 받는다. 

◆ 카트 체험이나 제트보트 체험을 할 때에는 안전 요원의 지시를 잘 숙지하고 안전하게 체험할 수 있도록 한다. 

◆ 특히 제트보트 체험을 할 때 안전장치를 정확히 착용하고 위험한 행동을 하지 않도록 한다.\n\n\n''')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
