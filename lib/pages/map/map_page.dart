import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/main.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_0.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_1.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_2.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_3.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_4.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_5.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_6.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_7.dart';
import 'package:math_travel/pages/map/map_info_pages/map_info_8.dart';

import 'package:math_travel/controllers/team_controller.dart';

import 'package:math_travel/themes/colors.dart';

List teamAMainSchedule = [
  '새별오름',
  '오설록',
  '제트보트',
  '세리카트',
  '정방폭포',
  '월정리해수욕장',
  '성산일출봉',
  '올레길',
  '전통시장체험',
];

List teamBMainSchedule = [
  '새별오름',
  '제트보트',
  '오설록',
  '정방폭포',
  '세리카트',
  '월정리해수욕장',
  '성산일출봉',
  '올레길',
  '전통시장체험',
];

List teamCMainSchedule = [
  '새별오름',
  '오설록',
  '세리카트',
  '제트보트',
  '정방폭포',
  '월정리해수욕장',
  '성산일출봉',
  '올레길',
  '전통시장체험',
];

List teamDMainSchedule = [
  '새별오름',
  '세리카트',
  '오설록',
  '올레길',
  '제트보트',
  '월정리해수욕장',
  '성산일출봉',
  '정방폭포',
  '전통시장체험',
];

Map currentMainSchedule = {
  'A조': teamAMainSchedule,
  'B조': teamBMainSchedule,
  'C조': teamCMainSchedule,
  'D조': teamDMainSchedule
};

Map scheduleRoute = {
  '새별오름': const MapInfo0(),
  '오설록': const MapInfo1(),
  '제트보트': const MapInfo2(),
  '세리카트': const MapInfo3(),
  '정방폭포': const MapInfo4(),
  '월정리해수욕장': const MapInfo5(),
  '성산일출봉': const MapInfo6(),
  '올레길': const MapInfo7(),
  '전통시장체험': const MapInfo8(),
};

GlobalKey key0 = GlobalKey();
GlobalKey key1 = GlobalKey();
GlobalKey key2 = GlobalKey();
GlobalKey key3 = GlobalKey();
GlobalKey key4 = GlobalKey();
GlobalKey key5 = GlobalKey();
GlobalKey key6 = GlobalKey();
GlobalKey key7 = GlobalKey();
GlobalKey key8 = GlobalKey();

List keys = [key0, key1, key2, key3, key4, key5, key6, key7, key8];

TeamController teamController = Get.put(TeamController());

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {});
      }
    });
    List mainSchedule = currentMainSchedule[teamController.team().currentTeam]
        .reversed
        .toList();

    return SafeArea(
      child: Center(
        child: Stack(
          children: [
            CustomPaint(
              painter: TourPath(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
            ),
            SingleChildScrollView(
              reverse: true,
              controller: _scrollController,
              child: Column(
                children: mainSchedule
                    .asMap()
                    .map(
                      (key, value) {
                        return MapEntry(
                            key,
                            TourList(
                              index: key,
                              where: value,
                              route: scheduleRoute[value],
                            ));
                      },
                    )
                    .values
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TourList extends StatelessWidget {
  int index;
  String where;
  Widget route;

  TourList(
      {super.key,
      required this.index,
      required this.where,
      required this.route});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var icon = scheduleController.getThisScheduleInfo(where)['icon'];
    return Container(
      alignment: index.isEven ? Alignment.centerLeft : Alignment.centerRight,
      width: width * (0.9 - index * 0.05),
      height: height * 0.15,
      child: GestureDetector(
        onTap: () {
          Get.to(route);
        },
        child: Container(
          key: keys[index],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: blue,
          ),
          width: height * 0.125,
          height: height * 0.125,
          child: icon is IconData
              ? Icon(icon)
              : (icon is AssetImage
                  ? ImageIcon(icon)
                  : const Icon(Icons.error)),
        ),
      ),
    );
  }
}

class TourPath extends CustomPainter {
  double width;
  double height;

  TourPath({required this.width, required this.height});
  Offset getPosition(GlobalKey key) {
    final RenderBox renderBox =
        key.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    return position;
  }

  double dx(int index) {
    return getPosition(keys[index]).dx;
  }

  double dy(int index) {
    return getPosition(keys[index]).dy + height * 0.075;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint wavePainter = Paint()
      ..color = white
      ..strokeWidth = 15
      ..style = PaintingStyle.stroke;

    Path path = Path()
      ..moveTo(dx(0), dy(0))
      ..quadraticBezierTo(
          dx(0) + height * 0.4, dy(0) + height * 0.01, dx(1), dy(1))
      ..quadraticBezierTo(
          dx(1) - height * 0.4, dy(1) + height * 0.01, dx(2), dy(2))
      ..quadraticBezierTo(
          dx(2) + height * 0.4, dy(2) + height * 0.015, dx(3), dy(3))
      ..quadraticBezierTo(
          dx(3) - height * 0.35, dy(3) + height * 0.015, dx(4), dy(4))
      ..quadraticBezierTo(
          dx(4) + height * 0.4, dy(4) + height * 0.015, dx(5), dy(5))
      ..quadraticBezierTo(
          dx(5) - height * 0.3, dy(5) + height * 0.015, dx(6), dy(6))
      ..quadraticBezierTo(
          dx(6) + height * 0.3, dy(6) + height * 0.015, dx(7), dy(7))
      ..quadraticBezierTo(
          dx(7) - height * 0.2, dy(7) + height * 0.015, dx(8), dy(8));
    canvas.drawPath(path, wavePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
