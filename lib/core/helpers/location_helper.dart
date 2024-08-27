import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationHelper {
  /// Checks if location permissions are granted and if location services are enabled.
  static Future<bool> _hasPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  /// Requests location permissions if not already granted.
  static Future<bool> _requestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      await openSettings();
      return false;
    }

    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  /// Opens the app settings where the user can manually enable permissions.
  static Future<void> openSettings() async {
    await Geolocator.openAppSettings();
  }

  /// Retrieves the current location of the user.
  static Future<Position?> getCurrentLocation() async {
    bool hasPermission = await _hasPermission();

    if (!hasPermission) {
      bool granted = await _requestPermission();
      if (!granted) {
        return null;
      }
    }

    return await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
      ),
    );
  }

  /// Retrieves the current city of the user.
  static Future<String> getCurrentCity(Position? position) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(
      position!.latitude,
      position.longitude,
    );

    return placeMarks[0].locality.toString();
  }
}
