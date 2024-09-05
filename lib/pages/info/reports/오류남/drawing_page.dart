// import 'package:flutter/material.dart';
// import 'package:flutter_drawing_board/flutter_drawing_board.dart';
// import 'dart:ui' as ui;

// import 'package:get/get.dart';

// // void main() {
// //   runApp(DrawingApp());
// // }

// class DrawingApp extends StatelessWidget {
//   const DrawingApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: DrawingBoardScreen(),
//     );
//   }
// }

// class DrawingBoardScreen extends StatefulWidget {
//   const DrawingBoardScreen({super.key});

//   @override
//   _DrawingBoardScreenState createState() => _DrawingBoardScreenState();
// }

// class _DrawingBoardScreenState extends State<DrawingBoardScreen> {
//   final DrawingController _drawingController = DrawingController();
//   double _colorOpacity = 1;

//   @override
//   Widget build(BuildContext context) {
//     _drawingController.setStyle(
//       color: Colors.black,
//     );
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: const Icon(Icons.arrow_back),
//         ),
//         title: const Text('Flutter Drawing Board'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: DrawingBoard(
//               controller: _drawingController,
//               background:
//                   Container(width: 500, height: 400, color: Colors.white),
//               showDefaultActions: true,
//               showDefaultTools: true,
//             ),
//           ),
//           Row(
//             children: [
//               PopupMenuButton<Color>(
//                 icon: const Icon(Icons.color_lens),
//                 onSelected: (ui.Color value) => _drawingController.setStyle(
//                     color: value.withOpacity(_colorOpacity)),
//                 itemBuilder: (_) {
//                   return <PopupMenuEntry<ui.Color>>[
//                     PopupMenuItem<Color>(
//                       child: StatefulBuilder(
//                         builder: (BuildContext context,
//                             Function(void Function()) setState) {
//                           return Slider(
//                             value: _colorOpacity,
//                             onChanged: (double v) {
//                               setState(() => _colorOpacity = v);
//                               _drawingController.setStyle(
//                                 color: _drawingController.drawConfig.value.color
//                                     .withOpacity(_colorOpacity),
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                     ...[Colors.black, ...Colors.accents].map((ui.Color color) {
//                       return PopupMenuItem<ui.Color>(
//                           value: color,
//                           child:
//                               Container(width: 100, height: 50, color: color));
//                     }),
//                   ];
//                 },
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
