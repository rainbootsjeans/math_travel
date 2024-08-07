import 'package:flutter/material.dart';

import 'package:math_travel/widgets/box.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Flexible(
              flex: 30,
              child: Box(
                child: Text('asd'),
              ),
            ),
            Flexible(
                child: Container(
              height: double.maxFinite,
            )),
            const Flexible(
              flex: 6,
              child: Box(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text('♚♚자원단 정☆보♚♚확인하러 가기☜☜')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
