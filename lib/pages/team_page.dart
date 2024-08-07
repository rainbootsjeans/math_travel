import 'package:flutter/material.dart';
import 'package:math_travel/widgets/box.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Flexible(
              flex: 6,
              child: Box(
                child: Text('asd'),
              ),
            ),
            Flexible(
                child: Container(
              height: double.maxFinite,
            )),
            const Flexible(
              flex: 20,
              child: Box(
                child: Text('asd'),
              ),
            ),
            Flexible(
                child: Container(
              height: double.maxFinite,
            )),
            const Flexible(
              flex: 8,
              child: Box(
                child: Text('asd'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
