import 'package:flutter/material.dart';

import '../../shared/themes.dart';

class HomeServiceItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeServiceItem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(
              bottom: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 26,
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
