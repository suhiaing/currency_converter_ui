import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "WELCOME!\n\nUnsure about currency rates?\n\nLet our app do the math for you.\n\nPlease enter the currency exchange rate.",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        wordSpacing: 13,
      ),
    );
  }
}
