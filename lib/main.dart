import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependencty_injection.dart';
import 'core/routing/app_router.dart';
import 'weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();

  runApp(
    WeatherApp(
      appRouter: AppRouter(),
    ),
  );
}
