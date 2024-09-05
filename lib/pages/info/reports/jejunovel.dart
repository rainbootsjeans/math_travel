import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: JejuNewsPage(),
  ));
}

class JejuNewsPage extends StatelessWidget {
  const JejuNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''), //아마 페이지 넘겨오는 걸로 받으면 뒤로가기 버튼 생길듯?
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/report_assets/korean/newspaper_background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: sizeX,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/report_assets/korean/newspaper_background.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NewsHeadtitle(),
                  Maintitle(),
                  Maininfo(),
                  MainsupportInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewsHeadtitle extends StatelessWidget {
  const NewsHeadtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 2),
      child: Container(
        width: sizeX * 0.9,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(color: Colors.black, width: 1),
            bottom: BorderSide(color: Colors.black, width: 2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: sizeX * 0.25,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Center(
                  child: Text(
                    '세교 뉴스',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              const Text(
                '세교 제주 신문',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 50,
                width: sizeX * 0.25,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Center(
                  child: Text(
                    '정우성',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Maintitle extends StatelessWidget {
  const Maintitle({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        width: sizeX * 0.9,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(color: Colors.black, width: 1),
            bottom: BorderSide(color: Colors.black, width: 1),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  '제주도 방문할 때 읽기 좋은 소설!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                '제주도 자연과 풍경을 한 권에 담았다?!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Maininfo extends StatelessWidget {
  const Maininfo({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        width: sizeX * 0.9,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(color: Colors.black, width: 2),
            bottom: BorderSide(color: Colors.black, width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: sizeX * 0.4,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.black12,
                image: DecorationImage(
                  image:
                      AssetImage('assets/report_assets/korean/jejunovel.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: sizeX * 0.5,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '<소설 제주>',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\n제주에서 반짝이는\n찰나의 순간들을 담은\n젊은 작가 6인이\n전하는 감성 소설집',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\n# 제주 그대로의 감성을 느끼자!\n\n# 제작자 오피셜: 매우 강추하는 책',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainsupportInfo extends StatelessWidget {
  const MainsupportInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: sizeX * 0.9,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(color: Colors.black, width: 2),
            bottom: BorderSide(color: Colors.black, width: 1),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: Text(
              '한여름 반짝이는 바다처럼 제주에서의 찰나의 순간들을 담은 이 소설집은 정신없이 돌아가는 일상 속에서 어느 날 문득, 지금 자기가 서 있는 곳이 어디인지 모를 때 자신의 내면을 들여다볼 수 있게 하는 하나의 풍경이 되어줄 수 있다! 지금 바로 여행과 함께 읽어보자!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: jeju_news_page(),
//   ));
// }

// class jeju_news_page extends StatelessWidget {
//   const jeju_news_page({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             height: 1000,
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Flexible(child: news_headtitle()),
//                   Flexible(child: Maintitle()),
//                   Flexible(child: Maininfo()),
//                   Mainsupport_info(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class news_headtitle extends StatelessWidget {
//   news_headtitle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: EdgeInsets.only(top: 10, bottom: 2),
//       child: Container(
//         height: 80,
//         width: sizeX * 0.9,
//         decoration: BoxDecoration(
//             color: Colors.transparent,
//             border: Border(
//               top: BorderSide(color: Colors.black, width: 1),
//               bottom: BorderSide(color: Colors.black, width: 2),
//             )),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               height: 60,
//               width: 120,
//               decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border(
//                     top: BorderSide(color: Colors.black, width: 1),
//                     bottom: BorderSide(color: Colors.black, width: 1),
//                     left: BorderSide(color: Colors.black, width: 1),
//                     right: BorderSide(color: Colors.black, width: 1),
//                   )),
//               child: Center(
//                 child: Text(
//                   '세교 뉴스',
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w100),
//                 ),
//               ),
//             ),
//             Text(
//               '세교 제주 신문',
//               style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w900),
//             ),
//             Container(
//               height: 60,
//               width: 120,
//               decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border(
//                     top: BorderSide(color: Colors.black, width: 1),
//                     bottom: BorderSide(color: Colors.black, width: 1),
//                     left: BorderSide(color: Colors.black, width: 1),
//                     right: BorderSide(color: Colors.black, width: 1),
//                   )),
//               child: Center(
//                 child: Text(
//                   '정우성',
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w100),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Maintitle extends StatelessWidget {
//   const Maintitle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: EdgeInsets.only(bottom: 2),
//       child: Container(
//         width: sizeX * 0.9,
//         height: 140,
//         decoration: BoxDecoration(
//             color: Colors.transparent,
//             border: Border(
//               top: BorderSide(color: Colors.black, width: 1),
//               bottom: BorderSide(color: Colors.black, width: 1),
//             )),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(bottom: 10),
//               child: Text(
//                 '제주도 방문할 때 읽기 좋은 소설!',
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.black),
//               ),
//             ),
//             Text(
//               '제주도 자연과 풍경을 한 권에 담았다?!',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                   color: Colors.black),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Maininfo extends StatelessWidget {
//   const Maininfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: EdgeInsets.only(bottom: 2),
//       child: Container(
//         width: sizeX * 0.9,
//         height: 350,
//         decoration: BoxDecoration(
//             color: Colors.transparent,
//             border: Border(
//               top: BorderSide(color: Colors.black, width: 2),
//               bottom: BorderSide(color: Colors.black, width: 1),
//             )),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                 width: sizeX * 0.9,
//                 height: 350,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 200,
//                       height: 300,
//                       decoration: BoxDecoration(
//                         color: Colors.black12,
//                         image: DecorationImage(
//                           image: AssetImage('assets/report_assets/korean/jejunovel.png'),
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 200,
//                       height: 300,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               '<소설 제주>',
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.black),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               '\n제주에서 반짝이는\n찰나의 순간들을 담은\n젊은 작가 6인이\n전하는 감성 소설집',
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w200,
//                                   color: Colors.black),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               '\n# 제주 그대로의 감성을 느끼자!\n\n# 제작자 오피셜: 매우 강추하는 책',
//                               style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w100,
//                                   color: Colors.black),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Mainsupport_info extends StatelessWidget {
//   const Mainsupport_info({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeX = MediaQuery.of(context).size.width;
//     return Container(
//       width: sizeX * 0.9,
//       height: 200,
//       decoration: BoxDecoration(
//           color: Colors.transparent,
//           border: Border(
//             top: BorderSide(color: Colors.black, width: 1),
//             bottom: BorderSide(color: Colors.black, width: 2),
//           )),
//       child: Center(
//         child: Text(
//           '한여름 반짝이는 바다처럼 제주에서의 찰나의 순간들을 담은 이 소설집은 정신없이 돌아가는 일상 속에서 어느 날 문득, 지금 자기가 서 있는 곳이 어디인지 모를 때 자신의 내면을 들여다볼 수 있게 하는 하나의 풍경이 되어줄 수 있다! 지금 바로 여행과 함께 읽어보자!',
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),
//         ),
//       ),
//     );
//   }
// }
