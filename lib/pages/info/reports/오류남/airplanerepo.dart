// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:math_travel/pages/info/reports/airplane_careful.dart';
// import 'package:math_travel/pages/info/reports/physics_problem.dart';

// // void main() {
// //   runApp(const GetMaterialApp(
// //     home: AirplanPage(),
// //   ));
// // }

// class AirplanPage extends StatelessWidget {
//   const AirplanPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: GestureDetector(
//               onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
//         ),
//         body: const SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 AirplaneTitle(),
//                 Maininfo(),
//                 SupportInfo(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AirplaneTitle extends StatelessWidget {
//   const AirplaneTitle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;

//     return Stack(
//       children: [
//         Positioned(
//           right: -20,
//           top: -50,
//           child: SizedBox(
//             width: sizeX * 0.5,
//             height: 200,
//             child: Opacity(
//               opacity: 0.4,
//               child: Image.asset(
//                 'assets/report_assets/airplane_image/airplaneart.png',
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           child: Container(
//             width: sizeX * 0.9,
//             height: 200,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(
//                       'assets/report_assets/airplane_image/titleart.png'),
//                   fit: BoxFit.cover),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class Maininfo extends StatelessWidget {
//   const Maininfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;

//     return Container(
//       width: sizeX,
//       constraints: const BoxConstraints(
//         minHeight: 200,
//         maxHeight: 450,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 5, bottom: 10),
//                 child: Container(
//                   width: sizeX * 0.38,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: const Color.fromARGB(255, 157, 202, 240),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Text(
//                           '상승시',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w900,
//                             color: Color.fromARGB(255, 18, 85, 139),
//                           ),
//                         ),
//                         Text(
//                           '* 물의 끓는 점이 낮아지며, 만년필을 세웠을 때 잉크가 새어나갈 수 도 있다.',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700,
//                             color: Color.fromARGB(255, 21, 125, 211),
//                           ),
//                         ),
//                         Text(
//                           '\n* 과자봉투 등의 비닐봉투가 있다면 봉투가 팽창하는지 확인해보자!',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700,
//                             color: Color.fromARGB(255, 21, 125, 211),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 10, right: 5),
//                 child: Container(
//                   width: sizeX * 0.38,
//                   height: 200,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: const Color.fromARGB(255, 157, 202, 240),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         const Text(
//                           '하락시',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w900,
//                             color: Color.fromARGB(255, 18, 85, 139),
//                           ),
//                         ),
//                         RichText(
//                           text: TextSpan(
//                             children: [
//                               const TextSpan(
//                                 text: '* 비행기가 상공에서 자유낙하 할 경우 선내는 일시적인 ',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w700,
//                                   color: Color.fromARGB(255, 21, 125, 211),
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: '무중력',
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w700,
//                                   color: Color.fromARGB(255, 21, 125, 211),
//                                   backgroundColor: Colors.yellow,
//                                 ),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     showDialog(
//                                       context: context,
//                                       builder: (BuildContext context) {
//                                         return InfoPlus(
//                                           name: '무중력이란?',
//                                           info:
//                                               '중력은 다른 말로는 만유인력. 즉, 간단히 말해 질량이 존재하는 모든 물체에 작용하는 서로 끌어당기는 힘(인력)이라고 한다. 무중력 상태를 만드는 것은 불가능하며 이는 물리법칙을 위배하는 표현이라는 사실을 알 수 있다. 그러나 중력과 상쇄되는 반대방향의 같은 크기의 힘이 작용되어 물체에 가해지는 알짜힘(한 물체에 적용되는 힘의 합력)을 0으로 만들어 중력이 작용되지 않는 것처럼 느껴지게 하는 상태를 보편적으로 무중력 상태라고 칭하곤 한다.\n\n이러한 일시적인 무중력(에 가까운) 상태는 우주비행사나 비행기조종사 등의 훈련에 사용되기도 하며, 실제로 비행기에서 자유낙하하는 방식으로 훈련하는 방법도 있다고 한다.',
//                                         );
//                                       },
//                                     );
//                                   },
//                               ),
//                               const TextSpan(
//                                 text: ' 상태가 된다.',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w700,
//                                   color: Color.fromARGB(255, 21, 125, 211),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const Text(
//                           '\n* 잠깐! 여기서 무중력 상태라는 표현은 사실 물리학적으로 잘못된 표현이라고 해!',
//                           style: TextStyle(
//                             fontSize: 10,
//                             fontWeight: FontWeight.w100,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 1,
//               right: 10,
//             ),
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     width: sizeX * 0.55,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20),
//                       ),
//                       color: Color.fromARGB(255, 157, 202, 240),
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.all(15),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             '만약, 비행기에서 뛰어내린다면 어떻게 될까?',
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black,
//                             ),
//                           ),
//                           Text(
//                             '낙하산을 맨 사람이 상공 약 3만 피트에서 낙하한다고 한다면 중력가속도에 의해 속도가 증가하면서 그로 인한 공기 저항 또한 커질 것이다. 이러한 공기 저항력의 크기가 중력과 같아진다면 사람에게 가해지는 알짜힘은 0이 되면서 이후로는 공기저항력이 중력과 같아지는 순간의 속도를 유지한 채로 관성에 의한 등속도 직선 운동을 하게 된다.',
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w100,
//                               color: Colors.black,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Stack(
//                     children: [
//                       SizedBox(
//                         width: sizeX * 0.55,
//                         child: Expanded(
//                           child: Container(
//                             constraints: const BoxConstraints(maxHeight: 240),
//                             decoration: const BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(20),
//                                 bottomRight: Radius.circular(20),
//                               ),
//                             ),
//                             child: Opacity(
//                               opacity: 0.2,
//                               child: Image.asset(
//                                 'assets/report_assets/airplane_image/realplane.png',
//                                 // height: 250,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 70,
//                         // bottom: 0,
//                         right: 20,
//                         child: Container(
//                           width: 150,
//                           height: 130,
//                           decoration: const BoxDecoration(
//                             color: Colors.transparent,
//                             image: DecorationImage(
//                               image: AssetImage(
//                                   'assets/report_assets/airplane_image/jollaman.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 70,
//                         right: 120,
//                         child: Container(
//                           width: 60,
//                           height: 100,
//                           decoration: const BoxDecoration(
//                               image: DecorationImage(
//                             image: AssetImage(
//                                 'assets/report_assets/airplane_image/arrow.png'),
//                             fit: BoxFit.cover,
//                           )),
//                         ),
//                       ),
//                       const Positioned(
//                           top: 5,
//                           left: 10,
//                           child: Text(
//                             '* 가속도 : 시간 당 속도 변화량\n* 속도 : 시간 당 변위(위치 변화량)',
//                             style: TextStyle(fontSize: 11),
//                           )),
//                       const Positioned(
//                           bottom: 10,
//                           left: 10,
//                           child: Text(
//                             '관심 있는 사람들을 위해\n만든 간단한 물리 문제',
//                             style: TextStyle(fontSize: 11),
//                           )),
//                       Positioned(
//                         bottom: 5,
//                         right: 13,
//                         child: GestureDetector(
//                           onTap: () {
//                             Get.to(const ProblemPage());
//                           },
//                           child: Container(
//                             width: 70,
//                             height: 40,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border:
//                                     Border.all(color: Colors.black, width: 1)),
//                             child: const Center(
//                               child: Text(
//                                 '풀러가기',
//                                 style: TextStyle(
//                                     fontSize: 10, fontWeight: FontWeight.w900),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SupportInfo extends StatelessWidget {
//   const SupportInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 10, right: 10, bottom: 0),
//           child: Container(
//             width: sizeX * 0.6,
//             // height: 200,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: const Color.fromARGB(255, 157, 202, 240),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 5),
//                     child: Text(
//                       '기압차이로 인한 불편함, 뭐가 있을까?',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w900,
//                         color: Color.fromARGB(255, 21, 125, 211),
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                   ),
//                   Text(
//                     '비행기 이착륙시 발생하는 기압차이로 인해 귀가 먹먹해지는 증상은 항공성 중이염의 증상으로 이런 경우에는 기압감소 귀마개의 착용이나 가벼운 저작운동, 물, 침 등을 삼키는 행위가 도움이 된다.',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w700,
//                       color: Color.fromARGB(255, 92, 122, 146),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
//           child: SizedBox(
//             width: sizeX * 0.3,
//             // height: 170,
//             // color: Colors.black12,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(top: 4, right: 10, left: 10),
//                   child: Text(
//                     '\n비행기 선내에서의\n행동요법\n\n▼\n',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(const CarefulPage());
//                   },
//                   child: Container(
//                     width: sizeX * 0.3,
//                     height: 80,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: const Color.fromARGB(255, 222, 227, 233)),
//                     child: const Center(
//                       child: Text(
//                         '알아보러\n가기',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w900,
//                             color: Color.fromARGB(255, 105, 188, 255)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class InfoPlus extends StatelessWidget {
//   String name;
//   String info;
//   InfoPlus({super.key, required this.name, required this.info});

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return SizedBox(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//               constraints: BoxConstraints(maxHeight: height * 0.8),
//               padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
//               width: width * 0.8,
//               color: Colors.white,
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: RichText(
//                     text: TextSpan(
//                       style: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 15,
//                           fontFamily: 'GmarketSans'),
//                       children: [
//                         TextSpan(
//                             text: name,
//                             style:
//                                 const TextStyle(fontWeight: FontWeight.w500)),
//                         const TextSpan(text: '\n'),
//                         TextSpan(
//                             text: info,
//                             style:
//                                 const TextStyle(fontWeight: FontWeight.w300)),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).pop();
//             },
//             child: Container(
//                 width: width * 0.8,
//                 height: height * 0.05,
//                 color: const Color.fromARGB(255, 250, 250, 250),
//                 child: const Center(
//                   child: Text(
//                     '확인',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w100,
//                       fontFamily: 'GmarketSans',
//                       decoration: TextDecoration.none,
//                     ),
//                   ),
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }
