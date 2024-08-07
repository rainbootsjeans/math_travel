import 'package:get/get.dart';
import 'dart:async';
import 'package:math_travel/controllers/team_controller.dart';
import 'package:math_travel/models/team_model.dart';
import 'package:math_travel/models/schedule_model.dart';

TeamController teamController = Get.put(TeamController());

class ScheduleController extends GetxController {
  final team = Team().obs;
  final schedule = Schedule().obs;
  late Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateScheduleModel();
    });
  }

  List getMyTeamSchedule() {
    return schedule.value.teamScheduleInfo[teamController.team().currentTeam];
  }

  int getCurrentTimeAsInt() {
    DateTime now = DateTime.now();
    int currentTime = now.hour * 100 + now.minute;
    return currentTime;
  }

  List getCurrentSchedule() {
    int currentTime = getCurrentTimeAsInt();
    List scheduleTimeInfo = schedule.value.scheduleTimeInfo;
    List todayScheduleTimeInfo = scheduleTimeInfo[1];

    for (int i = 0; i < todayScheduleTimeInfo.length; i++) {
      if (currentTime >= todayScheduleTimeInfo[i][0] &&
          currentTime < todayScheduleTimeInfo[i][1]) {
        return todayScheduleTimeInfo[i];
      }
    }
    return [0, 0];
  }

  int getCurrentScheduleIndex() {
    int currentTime = getCurrentTimeAsInt();
    List scheduleTimeInfo = schedule.value.scheduleTimeInfo;
    List todayScheduleTimeInfo = scheduleTimeInfo[1];

    for (int i = 0; i < todayScheduleTimeInfo.length; i++) {
      if (currentTime >= todayScheduleTimeInfo[i][0] &&
          currentTime < todayScheduleTimeInfo[i][1]) {
        return i;
      }
    }
    return -1;
  }

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

  double getFormatTimeToSecond(int time) {
    // 0이면 00:00 반환
    //dart 에서DateTime으로 시간 받으면 24시도 00시로 받아져서 문제 x
    if (time == 0) {
      return 0.0;
    }
    double hours = (time ~/ 100).toDouble();
    double minutes = (time % 100).toDouble();

    double formattedTime = hours * 60 * 60 + minutes * 60;
    return formattedTime;
  }

  List getFormattedSchedule() {
    List curSchedule = getCurrentSchedule();
    int startTime = curSchedule[0];
    int endTime = curSchedule[1];

    String formattedStartTime = formatTime(startTime);
    String formattedEndTime = formatTime(endTime);

    return [formattedStartTime, formattedEndTime];
  }

  void updateScheduleModel() {
    List curSchedule = getCurrentSchedule();
    int currentTime = getCurrentTimeAsInt();

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
