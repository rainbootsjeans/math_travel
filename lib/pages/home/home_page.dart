import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/controllers/schedule_controller.dart';
import 'package:math_travel/controllers/team_controller.dart';
import 'package:math_travel/pages/home/before_home_page.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/themes/colors.dart';

import 'package:math_travel/pages/home/schedule/schedule_page.dart';
import 'package:math_travel/pages/home/after_home_page.dart';

TeamController teamController = Get.put(TeamController());
ScheduleController scheduleController = Get.put(ScheduleController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return scheduleController.schedule().isTravel
            ? SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 5,
                          child: Box(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TeamSelecter(),
                                    Text(
                                      '는 지금? :',
                                      style:
                                          TextStyle(color: black, fontSize: 12),
                                    )
                                  ],
                                ),
                                // 여기 왜 이렇게 해놨지 진짜모름
                                Obx(() => Text(scheduleController
                                        .getCurrentSchedule()
                                        .isEmpty
                                    ? scheduleController.getCurrentSchedule()
                                    : scheduleController.getCurrentSchedule()))
                              ],
                            ),
                          )),
                      Flexible(child: Container(height: double.maxFinite)),
                      const Flexible(
                        flex: 24,
                        child: Box(child: Center(child: CurruntScheduleIcon())),
                      ),
                      Flexible(child: Container(height: double.maxFinite)),
                      const Flexible(flex: 6, child: ScheduleTimer()),
                    ],
                  ),
                ),
              )
            : (scheduleController.schedule().beforeTravel
                ? const BeforeHomePage()
                : const AfterHomePage());
      },
    );
  }
}

//
List<String> teamList = ['A조', 'B조', 'C조', 'D조'];

class TeamSelecter extends StatefulWidget {
  const TeamSelecter({super.key});

  @override
  State<TeamSelecter> createState() => _TeamSelecterState();
}

class _TeamSelecterState extends State<TeamSelecter> {
  String dropdownValue = teamList.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Obx(
        () => DropdownButton(
          isDense: true,
          value: teamController.team().currentTeam,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          iconSize: 0,
          onChanged: (String? value) {
            setState(() {
              teamController.changeTeam(value);
            });
          },
          items: teamList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: green,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class CurruntScheduleIcon extends StatelessWidget {
  const CurruntScheduleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        var iconData = scheduleController.getCurrentScheduleIcon();

        if (iconData is IconData) {
          return Icon(
            iconData,
            size: MediaQuery.of(context).size.width * 0.65,
          );
        } else if (iconData is AssetImage) {
          return Image(
            image: iconData,
            width: MediaQuery.of(context).size.width * 0.9,
          );
        } else {
          return const Icon(Icons.error_outline);
        }
      },
    );
  }
}

class ScheduleTimer extends StatelessWidget {
  const ScheduleTimer({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Get.to(const SchedulePage());
      },
      child: Box(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text('${scheduleController.getTodaysDay() + 1}일차'),
            ),
            Obx(
              () => LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: displayWidth * 0.8,
                lineHeight: 15,
                barRadius: const Radius.circular(20),
                progressColor: green,
                percent:
                    scheduleController.schedule().currentPercentage.toDouble(),
              ),
            ),
            SizedBox(
              width: displayWidth * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(
                    () => Text(
                        scheduleController.schedule().curScheduleStartTime),
                  ),
                  Obx(
                    () =>
                        Text(scheduleController.schedule().curScheduleEndTime),
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
