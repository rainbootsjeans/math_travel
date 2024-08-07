import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'dart:async';

import 'package:math_travel/pages/home_page.dart';
import 'package:math_travel/pages/team_page.dart';
import 'package:math_travel/pages/info_page.dart';
import 'package:math_travel/pages/map_page.dart';

// import 'package:math_travel/themes/colors.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: IndexedStack(
          index: selectedIndex,
          children: const [
            TeamPage(),
            MapPage(),
            HomePage(),
            InfoPage(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        animationDuration: const Duration(microseconds: 500),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.people_alt_outlined), label: 'Team'),
          NavigationDestination(icon: Icon(Icons.map_outlined), label: 'Map'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.info_outline), label: 'Info'),
          // NavigationDestination(
          //     icon: Icon(Icons.ac_unit_outlined), label: 'label'),
        ],
      ),
    );
  }
}
