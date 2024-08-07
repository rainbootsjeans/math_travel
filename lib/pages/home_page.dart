import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:math_travel/controllers/team_controller.dart';
import 'package:math_travel/widgets/box.dart';
import 'package:math_travel/themes/colors.dart';

//팀 선택, 현재 일정 확인, 다음 일정까지 남은 시간 확인

TeamController teamController = Get.put(TeamController());

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
                          '${teamController.getSchedule(teamController.team().currentTeam)[0][0]}'))
                    ],
                  ),
                )),
            Flexible(child: Container(height: double.maxFinite)),
            const Flexible(
              flex: 24,
              child: Box(child: CurruntScheduleIcon()),
            ),
            Flexible(child: Container(height: double.maxFinite)),
            const Flexible(
              flex: 6,
              child: Box(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [Text('')],
                ),
              ),
            ),
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
