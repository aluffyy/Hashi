import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: const MapOptions(
            initialCenter: LatLng(51.59364, -.128928), initialZoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',

            // tileProvider: NetworkTileProvider(),
          ),
          MarkerLayer(
            markers: [],
          ),
        ],
      ),
    );
  }
}
