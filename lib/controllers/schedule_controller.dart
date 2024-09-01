import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:math_travel/controllers/team_controller.dart';
import 'package:math_travel/models/team_model.dart';
import 'package:math_travel/models/schedule_model.dart';

// 처리해서 넘겨줄 수 있는 값들은 최대한 처리해서 넘겨주도록

class ScheduleController extends GetxController {
  final team = TeamModel().obs;
  final schedule = ScheduleModel().obs;

  TeamController teamController = Get.put(TeamController());

  late Timer? timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateScheduleModel();
    });
  }

  // 주석의 주석
  // List 스케줄 → ['schedule1','schedule2','schedule3',....]
  // String 현재 스케줄 → "schedule"
  // List 스케줄 시간 → [[aaaa,bbbb],[bbbb,cccc],[cccc,dddd],....]
  // List 현재 스케줄 시간 → [nnnn,mmmm]

// 모든 일자의 팀스케줄 반환
  List<List<String>> getMyTeamSchedule() {
    return schedule.value.teamScheduleInfo[teamController.team().currentTeam];
  }

  Map<String, dynamic> getThisScheduleInfo(String receivedSchedule) {
    Map<String, Map<String, dynamic>> scheduleInfo =
        schedule.value.scheduleInfo;

    if (receivedSchedule.contains('김포')) {
      receivedSchedule = '비행기탐';
    } else if (receivedSchedule.contains('-')) {
      receivedSchedule = '이동중';
    } else if (receivedSchedule.contains('조식') ||
        receivedSchedule.contains('중식') ||
        receivedSchedule.contains('석식')) {
      receivedSchedule = '식사';
    }

    return scheduleInfo[receivedSchedule] ??
        {'icon': Icons.error, 'isPlace': true};
  }

  // 날짜에 해당하는 스케줄 반환
  List getMyTodayTeamSchedule() {
    DateTime now = DateTime.now();
    if (now.year == 2024 && now.month == 9) {
      if (9 <= now.day && now.day <= 11) {
        return schedule.value
            .teamScheduleInfo[teamController.team().currentTeam][now.day % 9];
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  // 날짜에 해당하는 스케줄 시간 반환
  List getMyTodayTeamScheduleTime() {
    DateTime now = DateTime.now();
    if (now.year == 2024 && now.month == 9) {
      if (9 <= now.day && now.day <= 11) {
        return schedule.value.scheduleTimeInfo[now.day % 9];
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  // 현재 시간을 nnnn형태로 반환
  int getCurrentTimeAsInt() {
    DateTime now = DateTime.now();
    int currentTime = now.hour * 100 + now.minute;
    return currentTime;
  }

  // 현재 스케줄 시간 반환
  List getCurrentScheduleTime() {
    int currentTime = getCurrentTimeAsInt();
    List todayTeamScheduleTime = getMyTodayTeamScheduleTime();

    if (todayTeamScheduleTime == []) return [];

    for (int i = 0; i < todayTeamScheduleTime.length; i++) {
      if (todayTeamScheduleTime[i][0] <= currentTime &&
          currentTime < todayTeamScheduleTime[i][1]) {
        return todayTeamScheduleTime[i];
      }
    }
    return [];
  }

  // 현재 스케줄 반환
  String getCurrentSchedule() {
    List currentScheduleTime = getCurrentScheduleTime();
    if (currentScheduleTime == []) {
      return '';
    } else {
      int index = getMyTodayTeamScheduleTime().indexOf(currentScheduleTime);
      return getMyTodayTeamSchedule()[index];
    }
  }

  dynamic getCurrentScheduleIcon() {
    Map scheduleInfo = getThisScheduleInfo(getCurrentSchedule());
    return scheduleInfo['icon'] ?? Icons.error_outline;
  }

  // int abcd(ab시 cd분)를 'ab:cd'로 반환
  String formatTime(int time) {
    // 0이면 00:00 반환
    //dart 에서DateTime으로 시간 받으면 24시도 00시로 받아져서 문제 x
    if (time == 0) {
      return '00:00';
    }

    int hours = time ~/ 100;
    int minutes = time % 100;

    String formattedTime =
        '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
    return formattedTime;
  }

// abcd(ab시 cd분)를 초단위로 반환
  double getFormatTimeToSecond(int time) {
    // 0이면 0초로 반환
    //dart 에서DateTime으로 시간 받으면 24시도 00시로 받아져서 문제 x
    if (time == 0) {
      return 0.0;
    }
    double hours = (time ~/ 100).toDouble();
    double minutes = (time % 100).toDouble();

    double formattedTime = hours * 60 * 60 + minutes * 60;
    return formattedTime;
  }

// [nnnn, nnnn] => [nn:nn , nn:nn]
  List getFormattedSchedule() {
    List curSchedule = getCurrentScheduleTime();
    int startTime = curSchedule[0];
    int endTime = curSchedule[1];

    String formattedStartTime = formatTime(startTime);
    String formattedEndTime = formatTime(endTime);

    return [formattedStartTime, formattedEndTime];
  }

  int getTodaysDay() {
    List todayTeamSchedule = getMyTodayTeamScheduleTime();
    if (schedule().isTravel == false) {
      return 0;
    }
    int todaysDay = schedule.value.scheduleTimeInfo.indexOf(todayTeamSchedule);
    return todaysDay;
  }

  void isTravel() {
    DateTime now = DateTime.now();
    DateTime startTime = DateTime(2024, 9, 9, 0, 0);
    DateTime endTime = DateTime(2024, 9, 11, 19, 59, 59);
    if (now.isAfter(startTime) && now.isBefore(endTime)) {
      schedule.update((val) {
        val?.isTravel = true;
      });
    } else {
      schedule.update((val) {
        val?.isTravel = false;
      });
    }
  }

  void updateScheduleModel() {
    isTravel();
    List curSchedule = getCurrentScheduleTime();
    int currentTime = getCurrentTimeAsInt();

    if (curSchedule.isEmpty) {
      return;
    }

    int startTime = curSchedule[0];
    int endTime = curSchedule[1];

    double startTimeToSecond = getFormatTimeToSecond(startTime);
    double endTimeToSecond = getFormatTimeToSecond(endTime);
    double currentTimeToSecond =
        getFormatTimeToSecond(currentTime) + DateTime.now().second.toDouble();
    double persentage = (currentTimeToSecond - startTimeToSecond) /
        (endTimeToSecond - startTimeToSecond);
    List formattedTime = getFormattedSchedule();

    schedule.update((val) {
      val?.curScheduleStartTime = formattedTime[0];
      val?.curScheduleEndTime = formattedTime[1];
      val?.currentTime = currentTimeToSecond.toInt();
      val?.currentPercentage = persentage.toDouble();
    });
  }
}
