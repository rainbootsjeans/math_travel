import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Widget child;
  const Box(
      {super.key, required this.child, this.width, this.height, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? double.maxFinite,
        height: height ?? double.maxFinite,
        padding: padding ?? const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: child);
  }
}
