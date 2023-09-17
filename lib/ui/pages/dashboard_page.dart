import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicodingone/ui/widgets/home_carousel.dart';

import '../../shared/themes.dart';
import '../widgets/home_services.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          buildProfile(context),
          buildCarousel(),
          buildServices(context),
          buildTips(),
        ],
      ),
    );
  }
}

Widget buildProfile(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo,',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Idan Rohman',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/account-page');
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/pa_idan.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildCarousel() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    child: CarouselSlider(
      options: CarouselOptions(
        height: 120.0, // Tinggi carousel
        autoPlay: true, // Menyalakan autoplay
        autoPlayInterval: Duration(seconds: 3), // Interval pergeseran
      ),
      items: const [
        HomeCarousel(
          imageUrl: 'assets/ic_laptop.png',
          title: 'Laptop',
        ),
        HomeCarousel(
          imageUrl: 'assets/ic_pc_dekstop.png',
          title: 'Pc Dekstop',
        ),
        // Tambahkan item-carousel lainnya sesuai kebutuhan Anda
      ],
    ),
  );
}

Widget buildServices(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Services',
          style: blackTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/ic_laptop.png',
                  title: 'Laptop',
                  onTap: () {
                    Navigator.pushNamed(context, '/topup');
                  },
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_pc_dekstop.png',
                  title: 'Pc Desktop',
                  onTap: () {
                    Navigator.pushNamed(context, '/transfer');
                  },
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_laptop.png',
                  title: 'MacBook',
                  onTap: () {},
                ),
                const HomeServiceItem(
                  iconUrl: 'assets/ic_more.png',
                  title: 'More',
                  // onTap: () {
                  //   showDialog(
                  //     context: context,
                  //     builder: (context) => const MoreDialog(),
                  //   );
                  // },
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildTips() {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img_friend1.png',
              height: 60,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seconds :',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: Text(
                    'Today im happy after service di Net IT Comp Bandung, para pelayannya sangat ramah',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img_friend2.png',
              height: 60,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Now :',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: Text(
                    'Peraltan service lengkap, ternyata tidak hanya service saja loh bisa beli laptop juga disini',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img_friend3.png',
              height: 60,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yesterday :',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: Text(
                    'Gak percaya servicenya murah?',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img_friend4.png',
              height: 60,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lastweek :',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: Text(
                    'Pelayanan yang memudahkan pelanggan, tidak perlu keluar rumah',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img_friend1.png',
              height: 60,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last month :',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: Text(
                    'Service laptop harga terjangkau',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        )
      ],
    ),
  );
}
