import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/theming/text_styles.dart';

class MyLocationOnMap extends StatelessWidget {
  const MyLocationOnMap({super.key, required this.state});

  final HomeState state;

  @override
  Widget build(BuildContext context) {
    final cubit = HomeCubit.get(context);
    return SizedBox(
      height: 120.h,
      child: state.whenOrNull(
        currentWeatherDataSuccess: (_) => _setupSuccess(cubit),
        currentWeatherDataloading: () =>  _setupLoading(),
        currentWeatherDataError: (_) => _setupError(),
      ),
    );
  }

  Widget _setupLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _setupError() {
    return Text(
      'There was an error loading the map',
      style: TextStylesManager.font15GreyRegular,
    );
  }

  FlutterMap _setupSuccess(HomeCubit cubit) {
    return FlutterMap(
      options: MapOptions(
        backgroundColor: Colors.transparent,
        initialCenter: LatLng(
            cubit.currentLocation!.latitude, cubit.currentLocation!.longitude),
        initialZoom: 10.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        CircleLayer(
          circles: [
            CircleMarker(
              point: LatLng(cubit.currentLocation!.latitude,
                  cubit.currentLocation!.longitude),
              color: Colors.blue.withOpacity(0.4),
              borderColor: Colors.blue,
              borderStrokeWidth: 2.0,
              radius: 100.0, // Adjust the radius as needed
            ),
          ],
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(cubit.currentLocation!.latitude,
                  cubit.currentLocation!.longitude),
              child: const Icon(Icons.location_on, color: Colors.red),
            ),
          ],
        )
      ],
    );
  }
}
