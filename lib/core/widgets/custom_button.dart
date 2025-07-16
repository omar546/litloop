import 'package:flutter/material.dart';
import 'package:litloop/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color backGroundColor;
  final VoidCallback onPress;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
     this.borderRadius, required this.text, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(12)),
        backgroundColor: backGroundColor,
      ),
      child: Text(
        text,
        style: Styles.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
