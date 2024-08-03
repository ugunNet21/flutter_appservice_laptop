import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  final TextEditingController _damageController = TextEditingController();
  final TextEditingController _costEstimateController = TextEditingController();
  String? _pickupMethod;
  double _pickupCost = 0.0;
  bool _isWillingToContinue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layanan Sistem Pakar')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Silakan masukkan informasi berikut:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _damageController,
                decoration: InputDecoration(
                  labelText: 'Sebutkan kerusakannya',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _costEstimateController,
                decoration: InputDecoration(
                  labelText: 'Estimasi biaya',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              DropdownButton<String>(
                hint: const Text('Pilih Metode Penjemputan'),
                value: _pickupMethod,
                onChanged: (String? newValue) {
                  setState(() {
                    _pickupMethod = newValue;
                    // Logika untuk menghitung biaya penjemputan
                    _pickupCost = newValue == 'Dijemput' ? 50.0 : 0.0; // Contoh biaya
                  });
                },
                items: <String>['Dijemput', 'Diantar']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              Text('Estimasi Biaya Penjemputan: Rp $_pickupCost'),
              CheckboxListTile(
                title: const Text('Bersedia melanjutkan perbaikan?'),
                value: _isWillingToContinue,
                onChanged: (bool? value) {
                  setState(() {
                    _isWillingToContinue = value ?? false;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isWillingToContinue ? _submit : null,
                child: const Text('Lanjutkan'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    // Logika untuk mengirim data dan melanjutkan ke proses berikutnya
    final damage = _damageController.text;
    final costEstimate = _costEstimateController.text;

    // Tampilkan dialog konfirmasi atau navigasi ke halaman berikutnya
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Konfirmasi'),
          content: Text('Kerusakan: $damage\nEstimasi Biaya: Rp $costEstimate\nMetode Penjemputan: $_pickupMethod'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Logika untuk melanjutkan ke tracking atau pembayaran
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}