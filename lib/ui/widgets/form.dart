import 'package:flutter/material.dart';
import 'package:flutter_dicodingone/shared/themes.dart';

class CustomeFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomeFormField({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        )
      ],
    );
  }
}
