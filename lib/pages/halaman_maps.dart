//Nama: Farrel Gavin Azarya Fadillillah
//NRP: 152024016

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HalamanMaps extends StatefulWidget {
  const HalamanMaps({super.key});

  @override
  State<HalamanMaps> createState() => _HalamanMapsState();
}

class _HalamanMapsState extends State<HalamanMaps> {
  static const LatLng lokasiKampus = LatLng(-6.9730070, 107.6305286);

  final Set<Marker> _marker = {
    const Marker(
      position: LatLng(-6.9730070, 107.6305286),
      markerId: MarkerId('lokasi_kampus'),
      infoWindow: InfoWindow(
        title: 'Telkom University',
        snippet: 'Jl. Telekomunikasi Bandung',
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Flutter'),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: lokasiKampus,
          zoom: 15,
        ),
        markers: _marker,
      ),
    );
  }
}