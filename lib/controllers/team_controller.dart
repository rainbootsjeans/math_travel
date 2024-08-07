import 'package:get/get.dart';
import 'package:math_travel/models/team_model.dart';
import 'package:math_travel/models/schedule_model.dart';

class TeamController extends GetxController {
  final team = Team().obs;
  final schedule = Schedule().obs;

  void changeTeam(String? selectedTeam) {
    team.update((value) {
      value?.currentTeam = selectedTeam;
    });
  }
}
