import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const Flexible(child: SizedBox(height: double.maxFinite)),
            Flexible(
                flex: 35,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.5 * 0.9,
                      height: double.maxFinite,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: const Image(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/QRcode.png'),
                      ),
                    )
                  ],
                )),
            const Flexible(child: SizedBox(height: double.maxFinite)),
          ],
        ),
      ),
    );
  }
}
