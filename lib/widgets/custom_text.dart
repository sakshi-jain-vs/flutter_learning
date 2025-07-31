import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String outputText;

  // const CustomText(this.outputText, {super.key});
  const CustomText(String text, {super.key}) : outputText = text;

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w300,
        letterSpacing: 2.0,
        wordSpacing: 4.0,
        shadows: [
          Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 3),
        ],
      ),
    );
  }
}
