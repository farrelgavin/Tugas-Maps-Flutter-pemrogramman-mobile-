import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  static const _data = [
    ['Top Up Saldo', '+ Rp 500.000', Icons.add_circle, Colors.green],
    ['Transfer ke Budi', '- Rp 150.000', Icons.send, Colors.red],
    ['Bayar Listrik', '- Rp 200.000', Icons.bolt, Colors.red],
    ['Pulsa & Data', '- Rp 50.000', Icons.phone_android, Colors.red],
    ['Top Up Saldo', '+ Rp 300.000', Icons.add_circle, Colors.green],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          for (final d in _data)
            ListTile(
              leading: Icon(d[2] as IconData, color: d[3] as Color),
              title: Text(d[0] as String),
              trailing: Text(d[1] as String,
                  style: TextStyle(
                      color: d[3] as Color, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
      bottomNavigationBar: const Navbar(currentIndex: 1),
    );
  }
}
