// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';

// creating Stateless Widget for buttons
class CustomButton extends StatelessWidget {
  // declare variables
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  const CustomButton(
      {super.key,
      this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
