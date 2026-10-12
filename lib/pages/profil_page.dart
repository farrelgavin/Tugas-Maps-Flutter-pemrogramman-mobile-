import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  Widget _item(String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(color: Colors.grey)),
            Text(value,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFFE3F2FD),
              child: Icon(Icons.person, size: 70, color: Colors.blue),
            ),
          ),
          const SizedBox(height: 24),
          _item('Nama', 'Farrel Gavin Azarya Fadillillah'),
          _item('NIM', '152024016'),
          _item('Program Studi', 'Informatika'),
        ],
      ),
      bottomNavigationBar: const Navbar(currentIndex: 2),
    );
  }
}
