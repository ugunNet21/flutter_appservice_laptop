import 'package:flutter/material.dart';
import '../../shared/themes.dart';

class HomeCarousel extends StatelessWidget {
  final String imageUrl;
  final String title;
  const HomeCarousel({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 120,
      margin: const EdgeInsets.only(
        right: 17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              bottom: 13,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
