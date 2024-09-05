// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:url_launcher/url_launcher.dart';

// // void main() {
// //   runApp(const MaterialApp(
// //     home: repoPage(),
// //   ));
// // }

// class repoPage extends StatefulWidget {
//   const repoPage({super.key});

//   @override
//   _RepoPageState createState() => _RepoPageState();
// }

// class _RepoPageState extends State<repoPage> {
//   int _currentIndex = 0;
//   final CarouselController _CarouselController = CarouselController();

//   final List<Map<String, dynamic>> greentea_info = [
//     {
//       'img': 'assets/report_assets/greentea_image/greentea1.png',
//       'desc':
//           '감귤, 한라봉, 흑돼지, 제주도 하면 생각나는 음식들이죠! 그리고 제주도와 가까운 우도의 땅콩이나, 갈치, 옥돔 등 신선한 해산물 역시 빠질 수 없죠.\n\n제주도는 오산과 멀리 떨어져 있어서 그런지\n정말 새롭고 맛있는 특산물들이 많은 것 같아요!\n\n오늘은 그중에서도 제주도의 ‘녹차’ 이야기를\n해보려고 해요.\n\n자 그럼, 향긋한 녹차 밭으로 떠나볼까요?',
//       'title': '제주 녹차 이야기'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greentea2.png',
//       'desc':
//           '먼저 녹차의 특징을 알아볼게요!\n\n녹차는 차나무의 잎을 원료로 하는데요,\n특별한 점은 어린잎을 볶아서 말린다는 것입니다.\n이 과정에서 열 때문에 찻잎 속의 산화효소가\n파괴되어 깔끔한 맛을 내고, 푸른빛을 내게 되죠.\n\n이렇게 만들어진 녹차는 공장에서 현미와 함께\n가공되어 우리에게 친숙한 현미녹차가 되기도 하고, 갖가지 과일과 함께 블랜딩 되어 시중에 팔리기도 한답니다. ',
//       'title': '녹차의 특징'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greentea3.png',
//       'desc':
//           '또한, 세교고등학교 학생들이 방문하게 될 ‘오설록’은\n녹차 아이스크림과 녹차 치즈케이크 같이,\n녹차를 활용한 디저트로도 유명하죠.\n\n잠시 생각만 했는데 벌써 먹고 싶어지네요!',
//       'title': '오설록에 가기 전'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greentea4.png',
//       'desc':
//           '오설록의 디저트에 대해서 알아보기 전에\n그렇다면 이러한 녹차가 특별히 ‘제주’에서\n유명한 이유는 무엇일까요?\n\n그 비밀은 바로, 제주도의 ‘흙’에 있습니다.\n제주도의 흙은 국내 유일의 ‘화산회토’인데요,\n화산회토란 화산회를 주로 하여\n발달한 간대토양을 말합니다.\n\n이러한 화산회토는 유기물 함량이 매우 높아 양분과\n수분의 보유능력이 뛰어나며,\n이는 차나무의 생육과 우수한 품질의 찻잎 생산에\n큰 도움을 준다고 해요.',
//       'title': '제주도의 녹차가 유명한 이유는?'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greentea5.png',
//       'desc':
//           '제주도의 기후 또한 녹차 생산에 큰 몫을 합니다.\n\n좋은 차를 재배하기 위해서는\n연 강수량은 1400mm 이상,\n연 평균 기온은 14도에서 16도 사이여야 하며,\n겨울 최저 기온은 –5도 이상이어야 한다고 해요.\n\n하지만 제주도는 이 까다로운 녹차 재배 조건에도\n완벽히 부합합니다.\n\n제주도는 연평균 15도 이상,\n연 강수량1800mm 이상으로\n잎이 얼기 쉽고 물이 많이 필요한 차 재배에\n최적의 조건을 가지고 있습니다.\n\n우리나라의 녹차 주요 생산지가 보성, 하동, 제주,\n이 세 지역뿐인 것을 생각하면\n\n정말 흔치 않은것이죠!',
//       'title': '제주도의 기후가 녹차에 미치는 영향'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/osulloc.png',
//       'desc':
//           '이제 제주도 녹차에 대해서도 많이 알아봤으니\n우리가 가게될 제주 오설록 티 뮤지엄에 대해서\n설명을 해보죠.\n\n오설록 티 뮤지엄은 아모래퍼시픽에서\n차 문화 소개 및 보급 확산을 위해\n2001년에 개관한 최초의 차(茶) 박물관이라고 해요.\n그리고 특징이라고 하면 건물 전체가\n녹차 잔을 형상화하여 건축되었다고 해요.\n\n더 자세한 정보가 궁금하다면\n아래 링크를 참고해주세요!',
//       'title': '오설록'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greenteaproduct1.png',
//       'desc':
//           '\n제주 유기농 말차를 듬뿍 넣어 진한 풍미를\n자랑하는 말차 아이스크림입니다.\n\n달콤 쌉싸름한 말차의 맛이 돋보이며,\n오설록의 대표 디저트로 많은 사랑을 받고 있습니다.\n\n제주에서만 경험할 수 있는 특별한 맛을\n지금 만나보세요!!',
//       'title': '오설록 녹차 제품 추천\n["제주 말차 소프트 아이스크림"]'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greenteaproduct2.png',
//       'desc':
//           '\n꾸덕한 파베초콜릿과 바삭한 쿠키가 어우러져,\n제주 말차의 진한 풍미와 향을 담은\n고급스러운 디저트입니다.\n\n부드러운 식감과 적당한 단맛이 특징으로,\n한정수량으로 제주 티뮤지엄에서만\n만나보실 수 있습니다!',
//       'title': '오설록 녹차 제품 추천\n["말차 파베 샌드"]'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greenteaproduct3.png',
//       'desc':
//           '\n산지에서 갓 덖어내어 녹차의 향이 풍부한 \n고급 녹차입니다.\n\n감칠맛과 고소한 향이 깊어 녹차를 잘 마시지 않는\n분들도 거부감 없이 즐길 수 있습니다.\n\n이 제품은 제주 티뮤지엄에서만 구매할 수 있으니,\n꼭 한번 경험해 보세요!!!',
//       'title': '오설록 녹차 제품 추천\n["오설록 제주 구운녹차"]'
//     },
//     {
//       'img': 'assets/report_assets/greentea_image/greenteaQR.jpg',
//       'desc':
//           '위 QR을 이용하여 녹차와 관련된 퀴즈를 풀어주세요!\n\n우수 정답자 분들에게는 추첨을 통하여\n소정의 상품을 지급해드립니다!!',
//       'title': '퀴즈 참여하고 선물 받자!!'
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: GestureDetector(
//               onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             constraints: const BoxConstraints(minHeight: 650),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(top: 1, bottom: 1),
//                     child: Flexible(
//                       child: repoheadtitle(),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 10),
//                     child: Flexible(
//                       child: GreenTeaSlider(
//                         greentea_info: greentea_info,
//                         currentIndex: _currentIndex,
//                         carouselController: _CarouselController,
//                         onPageChanged: (index) {
//                           setState(() {
//                             _currentIndex = index;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(5),
//                     child: Flexible(
//                       child: GreenTeaInfo(
//                         desc_title: greentea_info[_currentIndex]['title'],
//                         description: greentea_info[_currentIndex]['desc'],
//                         currentIndex: _currentIndex,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class repoheadtitle extends StatelessWidget {
//   const repoheadtitle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           width: 75,
//           height: 75,
//           padding: const EdgeInsets.all(8.0),
//           margin: const EdgeInsets.all(8.0),
//           child: Image.asset(
//             'assets/report_assets/greentea_image/greenteaice.png',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//         ),
//         const Text(
//           'InGreenTeaGram',
//           style: TextStyle(
//             color: Colors.black,
//             decoration: TextDecoration.none,
//             fontSize: 25,
//           ),
//         )
//       ],
//     );
//   }
// }

// class GreenTeaSlider extends StatelessWidget {
//   final List<Map<String, dynamic>> greentea_info;
//   final int currentIndex;
//   final CarouselController carouselController;
//   final Function(int) onPageChanged;

//   const GreenTeaSlider({
//     super.key,
//     required this.greentea_info,
//     required this.currentIndex,
//     required this.carouselController,
//     required this.onPageChanged,
//   });

//   @override
//   build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: Stack(
//         children: [
//           CarouselSlider(
//             carouselController: carouselController,
//             options: CarouselOptions(
//                 height: 280,
//                 enlargeCenterPage: true,
//                 // aspectRatio: 10 / 7,
//                 aspectRatio: 1 / 2,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 viewportFraction: 0.8,
//                 onPageChanged: (index, reason) {
//                   onPageChanged(index);
//                 }),
//             items: greentea_info
//                 .map((item) => SizedBox(
//                       width: 350,
//                       child: Image.asset(
//                         item['img'],
//                         fit: BoxFit.cover,
//                         width: 350,
//                         height: 250,
//                       ),
//                     ))
//                 .toList(),
//           ),
//           Positioned(
//             left: -5,
//             top: 0,
//             bottom: 0,
//             child: GestureDetector(
//               onTap: () {
//                 if (currentIndex > 0) {
//                   carouselController.previousPage();
//                 } else {
//                   carouselController.previousPage();
//                 }
//               },
//               child: Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
//                 color: Colors.transparent, // 이 부분은 필요에 따라 조정 가능
//                 child: const Icon(Icons.arrow_back, size: 40),
//               ),
//             ),
//           ),
//           Positioned(
//             right: -5,
//             top: 0,
//             bottom: 0,
//             child: GestureDetector(
//               onTap: () {
//                 if (currentIndex < greentea_info.length - 1) {
//                   carouselController.nextPage();
//                 } else {
//                   carouselController.nextPage();
//                 }
//               },
//               child: Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
//                 color: Colors.transparent,
//                 child: const Icon(Icons.arrow_forward, size: 40),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class GreenTeaInfo extends StatelessWidget {
//   final String description;
//   final String desc_title;
//   final int currentIndex;

//   const GreenTeaInfo({
//     super.key,
//     required this.description,
//     required this.desc_title,
//     required this.currentIndex,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15),
//       child: ConstrainedBox(
//         constraints: const BoxConstraints(
//           minHeight: 180,
//         ),
//         child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               color: const Color.fromARGB(255, 248, 239, 239),
//             ),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: ExpandableText(
//                 title: desc_title,
//                 text: description,
//                 currentIndex: currentIndex,
//                 //   style: TextStyle(
//                 //     fontSize: 24,
//                 //     color: Colors.black,
//                 //   ),
//                 // ),
//               ),
//             )),
//       ),
//     );
//   }
// }

// class ExpandableText extends StatefulWidget {
//   final String text;
//   final String title;
//   final int currentIndex;

//   const ExpandableText({
//     super.key,
//     required this.text,
//     required this.title,
//     required this.currentIndex,
//   });

//   @override
//   _ExpandableTextState createState() => _ExpandableTextState();
// }

// class _ExpandableTextState extends State<ExpandableText> {
//   bool isExpanded = false;

//   @override
//   void didUpdateWidget(covariant ExpandableText oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.currentIndex != widget.currentIndex) {
//       // 페이지 인덱스가 변경될 때 isExpanded를 초기화
//       setState(() {
//         isExpanded = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: DefaultTextStyle(
//         style: const TextStyle(
//           fontSize: 20,
//           color: Colors.black,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.title,
//               style: const TextStyle(
//                 fontSize: 25,
//                 color: Colors.green,
//               ),
//             ),
//             if (widget.currentIndex == 5) // 특정 페이지일 때만 링크 추가
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: widget.text,
//                       style: const TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                     TextSpan(
//                       text: '\n오셜록_티_뮤지엄에_대해_더_알아보기',
//                       style: const TextStyle(
//                         color: Colors.blue,
//                         decoration: TextDecoration.underline,
//                         decorationThickness: 1.5,
//                       ),
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () async {
//                           final Uri url = Uri.parse(
//                               'https://www.osulloc.com/kr/ko/store-introduction/jeju-map');
//                           if (await canLaunchUrl(url)) {
//                             await launchUrl(url);
//                           } else {
//                             throw 'Could not launch $url';
//                           }
//                         },
//                     ),
//                   ],
//                   style: const TextStyle(fontSize: 20, color: Colors.black),
//                 ),
//                 maxLines: isExpanded ? null : 1,
//                 overflow:
//                     isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
//               )
//             else
//               Text(
//                 widget.text,
//                 maxLines: isExpanded ? null : 1,
//                 overflow:
//                     isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
//                 style: const TextStyle(fontSize: 20, color: Colors.black),
//               ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isExpanded = !isExpanded; // "더보기" 클릭 시 상태 변경
//                 });
//               },
//               child: Text(
//                 isExpanded ? '접기' : '더보기',
//                 style: const TextStyle(
//                   color: Colors.blue,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
