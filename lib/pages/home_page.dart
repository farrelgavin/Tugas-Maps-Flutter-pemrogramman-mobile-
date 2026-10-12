import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'emoney_page.dart';
import 'perpustakaan_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.school, size: 120, color: Colors.blue),
              const SizedBox(height: 16),
              const Text(
                'Selamat datang mahasiswa',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const EmoneyPage()),
                  ),
                  icon: const Icon(Icons.account_balance_wallet),
                  label: const Text('E-Money'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PerpustakaanPage()),
                  ),
                  icon: const Icon(Icons.local_library),
                  label: const Text('Perpustakaan'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(currentIndex: 0),
    );
  }
}
