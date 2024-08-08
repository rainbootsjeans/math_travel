import 'package:flutter/material.dart';

class SupporterInfo extends StatelessWidget {
  const SupporterInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "임시 정보 더보기",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
