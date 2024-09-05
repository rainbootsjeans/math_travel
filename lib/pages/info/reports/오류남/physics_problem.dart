// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// // void main() {
// //   runApp(GetMaterialApp(
// //     home: ProblemPage(),
// //   ));
// // }

// class ProblemPage extends StatelessWidget {
//   const ProblemPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.only(
//             top: 10,
//             left: 20,
//             bottom: 10,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 '물리 문제 풀어보기',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 width: sizeX * 0.7,
//                 child: RichText(
//                   text: const TextSpan(
//                     children: [
//                       TextSpan(
//                           text:
//                               ' 그림 (가)는 스카이다이빙을 하는 사람이 비행기에서 뛰어내려 낙하산을 펴기 전후의 모습을 나타낸 것이다.\n공기 저항에 의해 연직 위로 사람과 낙하산에 작용하는 힘의 크기는 ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: 'F',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: 'A',
//                           style: TextStyle(
//                               fontSize: 9,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: ' 이고, 사람과 낙하산에 작용하는 중력의 크기는 ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: 'F',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: 'B',
//                           style: TextStyle(
//                               fontSize: 9,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: '이다. 그림 (나)는 ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: 'F',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: 'A',
//                           style: TextStyle(
//                               fontSize: 9,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: '와 ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: 'F',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: 'B',
//                           style: TextStyle(
//                               fontSize: 9,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: '를 시간에 따라 나타낸 것이다. 사람의 질량은 ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: '60 kg',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: '이고, ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: '15',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: '초 이후에는 ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: 'F',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: 'A',
//                           style: TextStyle(
//                               fontSize: 9,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: ' = ',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                       TextSpan(
//                           text: 'F',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: 'B',
//                           style: TextStyle(
//                               fontSize: 9,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black)),
//                       TextSpan(
//                           text: '이다.',
//                           style: TextStyle(fontSize: 15, color: Colors.black)),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: sizeX * 0.7,
//                 height: 100,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(
//                         'assets/report_assets/airplane_image/graph.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               RichText(
//                 text: const TextSpan(
//                   children: [
//                     TextSpan(
//                         text: '0',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                     TextSpan(
//                         text: '초일 때 사람이 정지해 있었다면,  ',
//                         style: TextStyle(fontSize: 15)),
//                     TextSpan(
//                         text: '15',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                     TextSpan(
//                         text: '초일 때 사람의 속력은?\n(단, 수평 방향으로의 운동과 낙하산의 질량은 무시한다.)',
//                         style: TextStyle(fontSize: 15)),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: SizedBox(
//                   width: sizeX * 0.7,
//                   child: const Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('① 2m/s ',
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )),
//                           Text('② 3m/s ',
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )),
//                           Text('③ 5m/s ',
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('④ 6m/s ',
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )),
//                           Text('⑤ 10m/s',
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )),
//                           Text('              ',
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: SizedBox(
//                   width: sizeX * 0.7,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Stack(
//                         children: [
//                           Container(
//                             width: 100,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: const Text('이전 페이지'),
//                           ),
//                           Positioned(
//                             top: 30,
//                             left: -15,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Get.back();
//                               },
//                               child: Container(
//                                 width: 100,
//                                 height: 30,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: const Text(
//                                   '◀',
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       Stack(
//                         children: [
//                           Container(
//                             width: 110,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: const Text('정답 및 해설 보기'),
//                           ),
//                           Positioned(
//                             top: 30,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Get.to(const SolutionPage());
//                               },
//                               child: Container(
//                                 width: 110,
//                                 height: 30,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: const Text(
//                                   '▶',
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
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

// class SolutionPage extends StatelessWidget {
//   const SolutionPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('물리 문제 정답 및 해설'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.only(top: 10, left: 20),
//           child: SizedBox(
//             width: sizeX * 0.7,
//             child: const Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Text(
//                 //   '물리 문제 정답 및 해설',
//                 //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 // ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 5),
//                   child: Text('정답',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 20),
//                   child: Text('③ 5m/s ',
//                       style: TextStyle(
//                         fontSize: 15,
//                       )),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 5),
//                   child: Text('해설',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
//                 ),
//                 Text(
//                     '공기 저항에 의해 작용하는 힘의 방향은 연직 위 방향이고, 중력의 방향은 연직 아래 방향이다. 0~6초 동안에는 FA<FB이므로 알짜힘에 의해 사람이 받은 충격량의 방향은 연직 아래 방향이고, 6초~15초 동안에는 FA> FB이므로 알짜힘에 의해 사람이 받은 충격량의 방향은 연직 위 방향이다. 힘-시간 그래프에서 그래프 아랫부분의 넓이는 충격량과 같으므로 0~6초 동안 사람이 받은 충격량의 크기는 (600-100)×6=3000(N)이고, 6초~15초 동안은 ×(1200-600)×(15-6)=2700(N·s) 2 이다. 따라서 0~15초 동안 사람이 받은 충격량의 방향은 연직 아래 방향이고, 크기는 (3000-2700) N・s=300 N·s이다. 충 격량은 운동량의 변화량과 같으므로 15초일 때 사람의 속력을 v 라고 하면 300 N·s=60kg×v이다. 따라서 15초일 때 사람의 속력 v=5 m/s이다.',
//                     style: TextStyle(
//                       fontSize: 15,
//                     )),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
