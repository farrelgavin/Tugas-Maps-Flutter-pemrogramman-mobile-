import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/riwayat_page.dart';
import '../pages/profil_page.dart';

/// Navbar reusable: dipakai di setiap halaman lewat `bottomNavigationBar`.
/// Pindah halaman dilakukan dengan memilih menu (tanpa push/pop bertumpuk).
class Navbar extends StatelessWidget {
  final int currentIndex;
  const Navbar({super.key, required this.currentIndex});

  static const _pages = [HomePage(), RiwayatPage(), ProfilPage()];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        if (index == currentIndex && !Navigator.of(context).canPop()) return;
        Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => _pages[index],
            transitionDuration: Duration.zero,
          ),
          (route) => false,
        );
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.history), label: 'Riwayat'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}
