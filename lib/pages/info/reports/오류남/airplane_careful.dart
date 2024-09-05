// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:math_travel/pages/info/reports/airplanerepo.dart';
// import 'package:url_launcher/url_launcher.dart';

// // void main() {
// //   runApp(MaterialApp(
// //     home: CarefulPage(),
// //   ));
// // }

// class CarefulPage extends StatefulWidget {
//   const CarefulPage({super.key});

//   @override
//   _CarefulPageState createState() => _CarefulPageState();
// }

// class _CarefulPageState extends State<CarefulPage> {
//   int _currentIndex = 0;
//   final CarouselController _CarouselController = CarouselController();

//   final List<Map<String, dynamic>> careful_info = [
//     {
//       'img': 'assets/report_assets/airplane_image/careful.png',
//       'desc': '비행기 탑승후 안전한 비행을 위한 행동요령에 대해 물리학적으로 알아봅시다',
//     },
//     {
//       'img': 'assets/report_assets/airplane_image/run.png',
//       'desc': '비행기가 급정거하거나 비슷한 질량체와 충돌하는 경우 ',
//     },
//     {
//       'img': 'assets/report_assets/airplane_image/O2.png',
//       'desc':
//           '창문이 깨지거나, 비행기의 여압장치에 문제가 발생하는 등의 이유로 기내의 기압이 급격하게 낮아지는 경우 비행기 선반에서 ',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('이전페이지'),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             constraints: const BoxConstraints(minHeight: 650),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(top: 1, bottom: 1),
//                     child: Flexible(
//                       child: MainTitle(),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 10),
//                     child: Flexible(
//                       child: CarefulSlider(
//                         careful_info: careful_info,
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
//                       child: CarefulInfo(
//                         description: careful_info[_currentIndex]['desc'],
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

// class MainTitle extends StatelessWidget {
//   const MainTitle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;
//     return Center(
//       child: SizedBox(
//         width: sizeX * 0.95,
//         child: const Text(
//           '비행기 선내에서의 행동요법',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.w900,
//             color: Color.fromARGB(255, 18, 85, 139),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CarefulSlider extends StatelessWidget {
//   final List<Map<String, dynamic>> careful_info;
//   final int currentIndex;
//   final CarouselController carouselController;
//   final Function(int) onPageChanged;

//   const CarefulSlider({
//     super.key,
//     required this.careful_info,
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
//                 height: 400,
//                 enlargeCenterPage: true,
//                 // aspectRatio: 10 / 7,
//                 aspectRatio: 1 / 1,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 viewportFraction: 0.69,
//                 onPageChanged: (index, reason) {
//                   onPageChanged(index);
//                 }),
//             items: careful_info
//                 .map((item) => SizedBox(
//                       width: 500,
//                       child: Image.asset(
//                         item['img'],
//                         fit: BoxFit.contain,
//                         width: 400,
//                         height: 350,
//                       ),
//                     ))
//                 .toList(),
//           ),
//           Positioned(
//             left: 22,
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
//             right: 22,
//             top: 0,
//             bottom: 0,
//             child: GestureDetector(
//               onTap: () {
//                 if (currentIndex < careful_info.length - 1) {
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

// class CarefulInfo extends StatelessWidget {
//   final String description;
//   final int currentIndex;

//   const CarefulInfo({
//     super.key,
//     required this.description,
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
//                 text: description,
//                 currentIndex: currentIndex,
//               ),
//             )),
//       ),
//     );
//   }
// }

// class ExpandableText extends StatefulWidget {
//   final String text;
//   final int currentIndex;

//   const ExpandableText({
//     super.key,
//     required this.text,
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
//             // Text(
//             //   widget.text,
//             //   maxLines: isExpanded ? null : 1,
//             //   overflow:
//             //       isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
//             //   style: TextStyle(fontSize: 20, color: Colors.black),
//             // ),
//             if (widget.currentIndex == 1) // 특정 페이지일 때만 링크 추가
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: widget.text,
//                       style: const TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                     TextSpan(
//                       text: '운동관성',
//                       style: const TextStyle(
//                         color: Colors.black,
//                         backgroundColor: Colors.yellow,
//                         decoration: TextDecoration.underline,
//                         decorationThickness: 1.5,
//                       ),
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return SingleChildScrollView(
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(30),
//                                   child: InfoPlus(
//                                     name: '관성이란?',
//                                     info:
//                                         '''관성이란 용어 자체는 대부분 한 번씩 들어봤을 정도로 보편적인 개념인데, 간단히 말해 관성이란 원래의 운동상태를 유지하려는 성질이다. 이는 크게 운동관성과 정지관성으로 구분할 수 있는데, 운동관성은 운동하던 상태를 유지하려는 관성(ex 버스에서 급정거 했을때 몸이 앞으로 쏠림)이며 정지관성은 정지상태를 유지하려는 관성(ex 자동차에서 가속할 때 몸이 뒤로 쏠림)을 말한다.\n\n비행기의 상황에 적용시켜보자면 비슷한 질량의 질량체와 충돌하여 속력이 크게 줄어드는 상황에서라면 원래 운동하던 속도를 유지하려는 운동관성으로 인해 몸이 앞으로 쏠리게 될 것이며 이에 더해 비행기가 추락한다고 가정한다면 속도(운동 방향과 속력 모두)가 바뀌기 때문에 원래의 방향을 유지하려는 운동관성으로 인해 몸이 공중에 뜨게 될 것이다.\n\n하지만 이런 관성은 사실상 가상의 힘으로, 원심력 또한 관성력에 속한다. 이는 물체의 상호작용으로 인해 생기는 힘이 아니기 때문에 붙은 이름으로, 그렇기에 관성력에는 작용-반작용의 법칙이 적용되지 않는다.''',
//                                   ),
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                     ),
//                     const TextSpan(
//                       text:
//                           '으로 인해 우리의 몸은 운동방향으로 큰 힘을 받게 된다. 피해를 예방하기 위해 기내에서 돌아다니는 일을 최대한 자제하고 우리의 몸이 쏠리지 않게 잡아주는 안전벨트를 착용해야 한다. 또한, I = F*T에 의해 안전벨트에 1차적으로 충돌하며 탄성있는 끈이 충돌시간을 늘려 앞좌석에 부딪치는 것보다 충격력의 크기를 줄여준다.',
//                       style: TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                   ],
//                   style: const TextStyle(fontSize: 20, color: Colors.black),
//                 ),
//                 maxLines: isExpanded ? null : 1,
//                 overflow:
//                     isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
//               )
//             else if (widget.currentIndex == 2) // 특정 페이지일 때만 링크 추가
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: widget.text,
//                       style: const TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                     TextSpan(
//                       text: '산소마스크',
//                       style: const TextStyle(
//                         color: Colors.black,
//                         backgroundColor: Colors.yellow,
//                         decoration: TextDecoration.underline,
//                         decorationThickness: 1.5,
//                       ),
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return SingleChildScrollView(
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(30),
//                                   child: InfoPlus(
//                                     name: '산소마스크 속 물리이야기',
//                                     info:
//                                         '''*비행기에서 화재사고가 빈번히 발생하는 이유?\n상공 10,000ft 이상에서부터는 인간이 적응할 수 없을 정도로 기압이 낮아지기 때문에 비행기에서는 비행기 내부의 기압을 올려주는 여압장치를 사용해 기압을 조절한다. 하지만 만약 비행기의 기압이 알 수 없는 연유로 낮아지게 된다면 급격한 기압의 저하로 인하여 저산소증이 발생하게 된다. 이를 방지하기 위해 비행기에는 산소마스크가 항시 구비되어 있는데, 산소마스크가 선반에서 내려오면 줄을 길게 당겨 입과 코에 가까이 대면 된다.\n\n이러한 산소마스크는 따로 산소를 구비해두는 것이 아닌, 산소를 합성하는 방식으로 산소를 공급해준다. 산소마스크는 내부에서 고체의 염손산칼륨과 염소산나트륨에 열을 가하는 방식으로 순수한 산소를 합성하는데, 이는 연소하기 쉬운 화합물들이기에 비행기에 한 번 불이 붙으면 큰 불로 번져 쉽게 진압이 되지 않는 것의 원인이기도 하다.''',
//                                   ),
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                     ),
//                     const TextSpan(
//                       text:
//                           '가 내려오게 된다. 이는 급격한 기압저하로 인한 저산소증을 예방하기 위함으로 이러한 경우에는 승무원의 지시에 따라 당황하지 않고 산소 마스크를 당겨 약 15초에 20초 이내에 산소 마스크를 코와 입 모두에 대야한다.',
//                       style: TextStyle(fontSize: 20, color: Colors.black),
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
