import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? color;
  final Widget child;
  const Box(
      {super.key,
      required this.child,
      this.width,
      this.height,
      this.padding,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? double.maxFinite,
        height: height ?? double.maxFinite,
        padding: padding ?? const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: child);
  }
}
