import 'package:flutter/material.dart';
import 'package:flutter_dicodingone/shared/themes.dart';

class TrackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Status Layanan Laptop',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status Pengecekan:',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Sedang dilakukan pengecekan oleh teknisi.',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Estimasi Harga:',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Rp. 500.000',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Jenis Kerusakan:',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Laptop Tidak Bisa Booting',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Informasi Teknisi:',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Nama Teknisi : Ugun',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                'Hari dan Tanggal : Senin, 03 Agustus 2023',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                'Jl. Cimeuhmal Cimahi Barat',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Text(
              //     'Print Nota Perbaikan',
              //     style: whiteTextStyle.copyWith(
              //       fontSize: 14,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
