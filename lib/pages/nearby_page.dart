import 'package:Hashi/components/app_icons.dart';
import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/config/app_strings.dart';
import 'package:Hashi/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            userAgentPackageName: 'dev.aluffyy.flutter',

            // tileProvider: NetworkTileProvider(),
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(51.59364, -.128928),
                width: 100,
                height: 50,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: Text(
                        "Username",
                        style: TextStyle(color: Colors.brown),
                      ),
                    ),
                    SvgPicture.asset(
                      AppIcons.icLocation,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
