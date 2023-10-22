import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(
                -8.3730354,
                116.4608215,
              ),
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(-8.39380, 116.43990),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on, // Ikon yang digunakan
                      size: 40, // Ukuran ikon
                      color: Colors.red, // Warna ikon
                    ),
                    
                  ),
                ],
              ),
              MarkerLayer(markers: [
                Marker(
                    point: LatLng(-8.38442, 116.44263),
                    height: 80,
                    width: 80,
                    child: Icon(
                      Icons.location_on,
                      size: 40,
                      color: Colors.red,
                    ))
              ]),
              MarkerLayer(markers: [
                Marker(
                    point: LatLng(-8.36586, 116.46548),
                    height: 80,
                    width: 80,
                    child: Icon(
                      Icons.location_on,
                      size: 40,
                      color: Colors.red,
                    ))
              ]),
              MarkerLayer(markers: [
                Marker(
                    point: LatLng(-8.353605, 116.488870),
                    height: 80,
                    width: 80,
                    child: Icon(
                      Icons.location_on,
                      size: 40,
                      color: Colors.red,
                    ))
              ])
            ],
          ),
        ],
      ),
    );
  }
}