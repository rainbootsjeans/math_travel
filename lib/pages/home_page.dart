import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/controllers/schedule_controller.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:math_travel/controllers/team_controller.dart';
import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/themes/colors.dart';

//팀 선택, 현재 일정 확인, 다음 일정까지 남은 시간 확인

TeamController teamController = Get.put(TeamController());
ScheduleController scheduleController = Get.put(ScheduleController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                            style: TextStyle(color: black, fontSize: 12),
                          )
                        ],
                      ),
                      Obx(() => Text(
                          '${scheduleController.getMyTeamSchedule()[0][scheduleController.getCurrentScheduleIndex()]}'))
                    ],
                  ),
                )),
            Flexible(child: Container(height: double.maxFinite)),
            const Flexible(
              flex: 24,
              child: Box(child: CurruntScheduleIcon()),
            ),
            Flexible(child: Container(height: double.maxFinite)),
            const Flexible(flex: 6, child: ScheduleTimer()),
          ],
        ),
      ),
    );
  }
}

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
        child: DropdownButton(
      isDense: true,
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      iconSize: 0,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
        teamController.changeTeam(value);
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
    ));
  }
}

class CurruntScheduleIcon extends StatelessWidget {
  const CurruntScheduleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.abc);
  }
}

class ScheduleTimer extends StatelessWidget {
  const ScheduleTimer({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Box(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('1일차'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(
                () => Text(scheduleController.schedule().curScheduleStartTime),
              ),
              Obx(
                () => Text(scheduleController
                    .formatTime(scheduleController.getCurrentTimeAsInt())),
              ),
              Obx(
                () => Text(scheduleController.schedule().curScheduleEndTime),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
