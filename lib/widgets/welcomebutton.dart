import 'package:flutter/material.dart';

class Welcomebutton extends StatelessWidget {
  const Welcomebutton(
      {super.key, this.buttonText, this.onTap, this.color, this.textColor});

  final String? buttonText;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color:
              color ?? Colors.blue, // Default to blue if no color is provided
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            buttonText ?? 'Default Text',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
