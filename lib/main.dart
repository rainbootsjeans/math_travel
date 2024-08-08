import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'dart:async';
//에뮬 패키지
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/cupertino.dart';

import 'package:math_travel/pages/home_page.dart';
import 'package:math_travel/pages/team_page.dart';
import 'package:math_travel/pages/info_page.dart';
import 'package:math_travel/pages/map_page.dart';

// import 'package:math_travel/themes/colors.dart';

void main() => runApp(
      // //애뮬
      // DevicePreview(
      //   builder: (context) => const MyApp(),
      // ),
      // 그냥
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      //에뮬 (그냥할 때엔 builder 랑 locale 주석처리)
      // builder: DevicePreview.appBuilder,
      // locale: DevicePreview.locale(context),

      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  int selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
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
        selectedIndex: _currentIndex,
        onDestinationSelected: (value) => setState(() {
          _currentIndex = value;
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
          // NavigationDestination(
          //     icon: Icon(Icons.ac_unit_outlined), label: 'label'),
        ],
      ),
    );
  }
}
