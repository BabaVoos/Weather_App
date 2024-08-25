import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

class MyLocationOnMap extends StatelessWidget {
  const MyLocationOnMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(48.783333, 9.183333),
          initialZoom: 10.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          CircleLayer(
            circles: [
              CircleMarker(
                point: const LatLng(48.783333, 9.183333),
                color: Colors.blue.withOpacity(0.4),
                borderColor: Colors.blue,
                borderStrokeWidth: 2.0,
                radius: 100.0, // Adjust the radius as needed
              ),
            ],
          ),
          const MarkerLayer(
            markers: [
              Marker(
                point: LatLng(48.783333, 9.183333),
                child: Icon(Icons.location_on, color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}
