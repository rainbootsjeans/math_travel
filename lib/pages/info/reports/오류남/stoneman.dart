// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:math_travel/pages/info/reports/drawing_page.dart';

// // void main() {
// //   runApp(GetMaterialApp(
// //     home: StoneManPage(),
// //   ));
// // }

// class StoneManPage extends StatefulWidget {
//   const StoneManPage({super.key});

//   @override
//   _RepoPageState createState() => _RepoPageState();
// }

// class _RepoPageState extends State<StoneManPage> {
//   int _currentIndex = 0;
//   final CarouselController _carouselController = CarouselController();

//   final List<Map<String, dynamic>> stoneman_info = [
//     {
//       'img': 'assets/report_assets/stoneman_image/stoneman1.png',
//       'desc': '',
//       'title': '먼저 찻잔을 그려줍니다.'
//     },
//     {
//       'img': 'assets/report_assets/stoneman_image/stoneman2.png',
//       'desc': '',
//       'title': '그리고 모자를 씌워줘요.'
//     },
//     {
//       'img': 'assets/report_assets/stoneman_image/stoneman3.png',
//       'desc': '',
//       'title': '콩나물 두 개 그려주기!'
//     },
//     {
//       'img': 'assets/report_assets/stoneman_image/stoneman4.png',
//       'desc': '',
//       'title': '몸을 마저 그려주고~'
//     },
//     {
//       'img': 'assets/report_assets/stoneman_image/stoneman5.png',
//       'desc': '',
//       'title': '이제 얼굴을 꾸며주면..'
//     },
//     {
//       'img': 'assets/report_assets/stoneman_image/stoneman6.png',
//       'desc': '',
//       'title': '와.. 완성..?'
//     },
//     {
//       'img': 'assets/report_assets/stoneman_image/stonedrawing.png',
//       'desc': '',
//       'title': '너도 할 수 있다!!\n위 사진을 클릭해주세요'
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Container(
//                 color: Colors.white,
//                 constraints: const BoxConstraints(minHeight: 650),
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(top: 1, bottom: 1),
//                         child: Flexible(
//                           child: StoneHeadTitle(),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 10),
//                         child: Flexible(
//                           child: StoneManSlider(
//                             stoneman_info: stoneman_info,
//                             currentIndex: _currentIndex,
//                             carouselController: _carouselController,
//                             onPageChanged: (index) {
//                               setState(() {
//                                 _currentIndex = index;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Flexible(
//                           child: StoneManInfo(
//                             desc_title: stoneman_info[_currentIndex]['title'],
//                             description: stoneman_info[_currentIndex]['desc'],
//                             currentIndex: _currentIndex,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 3,
//                 top: 0,
//                 child: GestureDetector(
//                   onTap: () {
//                     Get.back();
//                   },
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
//                     color: Colors.transparent,
//                     child: const Icon(Icons.arrow_back, size: 30),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StoneHeadTitle extends StatelessWidget {
//   const StoneHeadTitle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(20),
//       child: Text(
//         '돌하르방 그리는 법',
//         style: TextStyle(
//           color: Colors.black,
//           decoration: TextDecoration.none,
//           fontSize: 45,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }

// class StoneManSlider extends StatelessWidget {
//   final List<Map<String, dynamic>> stoneman_info;
//   final int currentIndex;
//   final CarouselController carouselController;
//   final Function(int) onPageChanged;

//   const StoneManSlider({
//     super.key,
//     required this.stoneman_info,
//     required this.currentIndex,
//     required this.carouselController,
//     required this.onPageChanged,
//   });

//   @override
//   build(BuildContext context) {
//     return SizedBox(
//       height: 350,
//       child: Stack(
//         children: [
//           CarouselSlider(
//             carouselController: carouselController,
//             options: CarouselOptions(
//                 height: 400,
//                 enlargeCenterPage: true,
//                 // aspectRatio: 10 / 7,
//                 aspectRatio: 1 / 2,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 viewportFraction: 0.75,
//                 onPageChanged: (index, reason) {
//                   onPageChanged(index);
//                 }),
//             items: stoneman_info.map((item) {
//               return GestureDetector(
//                 onTap: () {
//                   if (currentIndex == stoneman_info.length - 1) {
//                     // 마지막 페이지일 때
//                     Get.to(const DrawingApp());
//                   }
//                 },
//                 child: SizedBox(
//                   width: 350,
//                   child: Image.asset(
//                     item['img'],
//                     fit: BoxFit.cover,
//                     width: 350,
//                     height: 250,
//                   ),
//                 ),
//               );
//             }).toList(),
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
//                 color: Colors.transparent,
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
//                 if (currentIndex < stoneman_info.length - 1) {
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

// class StoneManInfo extends StatelessWidget {
//   final String description;
//   final String desc_title;
//   final int currentIndex;

//   const StoneManInfo({
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
//           minHeight: 100,
//         ),
//         child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               color: const Color.fromARGB(255, 248, 239, 239),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Align(
//                 alignment: Alignment.topCenter,
//                 child: ExpandableText(
//                   title: desc_title,
//                   text: description,
//                   currentIndex: currentIndex,
//                   //   style: TextStyle(
//                   //     fontSize: 24,
//                   //     color: Colors.black,
//                   //   ),
//                   // ),
//                 ),
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
//         child: Center(
//           child: Text(
//             widget.title,
//             style: const TextStyle(
//               fontSize: 30,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }
