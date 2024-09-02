import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TempratureIcon extends StatelessWidget {
  const TempratureIcon({
    super.key,
    required this.weatherDescription,
  });

  final String? weatherDescription;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      getSvgPath(weatherDescription ?? 'Clear'),
      width: 100.w,
      height: 100.h,
    );
  }

  String getSvgPath(String weatherDescription) {
    switch (weatherDescription) {
      case 'Clouds':
        return 'assets/svgs/clouds.svg';
      case 'Thunder':
        return 'assets/svgs/thunder.svg';
      case 'Rain':
        return 'assets/svgs/rain.svg';
      case 'Snow':
        return 'assets/svgs/snowy.svg';
      default:
        return 'assets/svgs/clear.svg';
    }
  }
}
