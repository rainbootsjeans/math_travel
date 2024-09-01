import 'package:flutter/material.dart';
import 'package:math_travel/main.dart';

class ScheduleBox extends StatelessWidget {
  final bool isPlace;
  var icon;
  final String where;
  final int startTime;
  final int endTime;

  bool isCurrentScehdule = false;

  ScheduleBox(
      {super.key,
      required this.isPlace,
      required this.icon,
      required this.where,
      required this.startTime,
      required this.endTime});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(width * 0.01),
          height: isPlace ? height * 0.13 : height * 0.065,
          width: width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: width * 0.09, child: icon),
              SizedBox(width: width * 0.49, child: Text(where)),
              SizedBox(
                  width: width * 0.27,
                  child: Center(
                      child: Text(
                          '${scheduleController.formatTime(startTime)} - ${scheduleController.formatTime(endTime)}')))
            ],
          ),
        ),
        SizedBox(
          height: width * 0.02,
        ),
      ],
    );
  }
}
