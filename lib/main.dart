import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import 'package:math_travel/controllers/schedule_controller.dart';

import 'package:math_travel/pages/home/home_page.dart';
import 'package:math_travel/pages/info/info_page.dart';
import 'package:math_travel/pages/map/map_page.dart';
import 'package:math_travel/pages/team/team_page.dart';

//import 'package:device_preview/device_preview.dart';
//import 'package:flutter/foundation.dart';
import 'package:math_travel/themes/colors.dart';

//void main() {
//runApp(
//DevicePreview(
// enabled: !kReleaseMode,
// builder: (context) => const MyApp(),
// ),
//);
//}

void main() {
  runApp(const MyApp());
}

ScheduleController scheduleController = Get.put(ScheduleController());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'GmarketSans'),
      themeMode: ThemeMode.system,
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final PageController _pageController = PageController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueBright,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: HomePage(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: MapPage(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TeamPage(),
          ),
          // Padding(
          //   padding: EdgeInsets.all(20),
          //   child: NotificationPage(),
          // ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: InfoPage(),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: blueBright,
        indicatorColor: blue,
        height: MediaQuery.of(context).size.height * 0.1,
        selectedIndex: currentIndex,
        onDestinationSelected: (value) => setState(() {
          currentIndex = value;
          _pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }),
        animationDuration: const Duration(microseconds: 500),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: '홈'),
          NavigationDestination(
              icon: Icon(Icons.map_outlined),
              selectedIcon: Icon(Icons.map),
              label: '지도'),
          NavigationDestination(
              icon: Icon(Icons.airplane_ticket_outlined),
              selectedIcon: Icon(Icons.airplane_ticket),
              label: '비행기'),
          // NavigationDestination(
          //     icon: Icon(Icons.notifications_outlined),
          //     selectedIcon: Icon(Icons.notifications),
          //     label: '공지'),
          NavigationDestination(
              icon: Icon(Icons.info_outline),
              selectedIcon: Icon(Icons.info),
              label: '정보'),
        ],
      ),
    );
  }
}
