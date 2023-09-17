import 'package:flutter/material.dart';
import 'package:flutter_dicodingone/shared/themes.dart';

class CustomeFiledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomeFiledButton({
    super.key,
    required this.title,
    this.height = 50,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}

