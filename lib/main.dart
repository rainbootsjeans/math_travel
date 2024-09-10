import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/controllers/schedule_controller.dart';

import 'package:math_travel/pages/home/home_page.dart';
import 'package:math_travel/pages/home/after_home_page.dart';
import 'package:math_travel/pages/info/info_page.dart';
import 'package:math_travel/pages/map/map_page.dart';
import 'package:math_travel/pages/team/team_page.dart';

void main() {
  runApp(const MyApp());
}

ScheduleController scheduleController = Get.put(ScheduleController());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MainPage(),
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
            padding: EdgeInsets.all(20),
            child: MapPage(),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TeamPage(),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: InfoPage(),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
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
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.map_outlined), label: 'Map'),
          NavigationDestination(
              icon: Icon(Icons.people_alt_outlined), label: 'Team'),
          NavigationDestination(icon: Icon(Icons.info_outline), label: 'Info'),
        ],
      ),
    );
  }
}
