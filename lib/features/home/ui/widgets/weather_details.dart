import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors_manager.dart';
import 'weather_details_item.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: ColorsManager.greyColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WeatherDetailsItem(
            image: 'assets/svgs/wind.svg',
            value: '10',
            title: 'Wind',
            unit: 'm/s',
          ),
          WeatherDetailsItem(
            image: 'assets/svgs/humidity.svg',
            value: '10',
            title: 'Humidity',
            unit: '%',
          ),
          WeatherDetailsItem(
            image: 'assets/svgs/rain.svg',
            value: '100',
            title: 'Rain',
            unit: '%',
          ),
        ],
      ),
    );
  }
}
