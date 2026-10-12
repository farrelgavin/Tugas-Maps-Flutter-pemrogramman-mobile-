import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'halaman_menu.dart';

class EmoneyPage extends StatelessWidget {
  const EmoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Money'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Saldo E-Money',
                    style: TextStyle(color: Colors.white70)),
                SizedBox(height: 6),
                Text('Rp 1.250.000',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const MenuPage(),
        ],
      ),
      bottomNavigationBar: const Navbar(currentIndex: 0),
    );
  }
}
