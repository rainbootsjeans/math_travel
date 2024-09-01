import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/controllers/schedule_controller.dart';

import 'package:math_travel/models/schedule_model.dart';

import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/widgets/schedule_box.dart';

ScheduleController scheduleController = Get.put(ScheduleController());

// ignore: must_be_immutable
class ScheduleTapbar extends StatefulWidget {
  int initialIndex;
  ScheduleTapbar({super.key, required this.initialIndex});

  @override
  State<ScheduleTapbar> createState() => ScheduleTapbarState();
}

class ScheduleTapbarState extends State<ScheduleTapbar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  final selectedColor = const Color(0xff1a73e8);
  final tabs = [
    const Tab(text: '9일'),
    const Tab(text: '10일'),
    const Tab(text: '11일'),
  ];

  final scheduleTimeIfos = ScheduleModel().scheduleTimeInfo;

  @override
  void initState() {
    tabController = TabController(
        initialIndex: widget.initialIndex, length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Box(
                width: width * 0.15,
                height: height * 0.05,
                child: const Center(child: Text('일자'))),
            Box(
              width: width * 0.65,
              height: height * 0.05,
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: tabs,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: tabs
                .asMap()
                .map(
                  (index, tab) {
                    return MapEntry(
                      index,
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Obx(
                              () {
                                List<String> schedules = scheduleController
                                    .getMyTeamSchedule()[index];

                                return Column(
                                  children: schedules
                                      .asMap()
                                      .map(
                                        (key, value) {
                                          Map scheduleInfo = scheduleController
                                              .getThisScheduleInfo(value);
                                          var icon = scheduleInfo['icon'];
                                          return MapEntry(
                                              key,
                                              ScheduleBox(
                                                  isPlace:
                                                      scheduleInfo['isPlace'],
                                                  icon: icon is IconData
                                                      ? Icon(icon)
                                                      : (icon is AssetImage
                                                          ? ImageIcon(icon)
                                                          : const Icon(
                                                              Icons.error)),
                                                  where: value,
                                                  startTime:
                                                      scheduleTimeIfos[index]
                                                          [key][0],
                                                  endTime:
                                                      scheduleTimeIfos[index]
                                                          [key][1]));
                                        },
                                      )
                                      .values
                                      .toList(),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
                .values
                .toList(),
          ),
        ),
      ],
    );
  }
}
