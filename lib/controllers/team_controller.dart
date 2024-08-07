import 'package:get/get.dart';
import 'package:math_travel/models/team_model.dart';

class TeamController extends GetxController {
  final team = Team().obs;

  void changeTeam(String? selectedTeam) {
    team.update((value) {
      value?.currentTeam = selectedTeam;
    });
  }

  List getSchedule(String? value) {
    return team.value.teamScheduleInfo[value];
  }
}
