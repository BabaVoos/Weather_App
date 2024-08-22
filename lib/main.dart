import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'weather_app.dart';

void main() {
  runApp(
    WeatherApp(
      appRouter: AppRouter(),
    ),
  );
}
