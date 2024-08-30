import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/helpers/extinsions.dart';

class HourlyForcastItem extends StatelessWidget {
  const HourlyForcastItem({
    super.key,
    required this.temp,
    required this.index,
  });

  final double temp;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        color: ColorsManager.greyColor,
      ),
      child: temp == 0
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Text(
                  getHour(index),
                  style: TextStylesManager.font16GreyRegular,
                ),
                verticalSpacing(5),
                Text(
                  getWeatherIcon(temp.toCelsius()),
                  style: TextStylesManager.font20WhiteRegular
                      .copyWith(fontSize: 30.sp),
                ),
                verticalSpacing(5),
                Text(
                  '${temp.toCelsius()}°',
                  style: TextStylesManager.font16WhiteRegular,
                ),
              ],
            ),
    );
  }

  /// Returns the hour based on the index
  String getHour(int index) {
    switch (index) {
      case 0:
        return '12 am';
      case 1:
        return '3 am';
      case 2:
        return '6 am';
      case 3:
        return '9 am';
      case 4:
        return '12 pm';
      case 5:
        return '3 pm';
      case 6:
        return '6 pm';
      case 7:
        return '9 pm';
      default:
        return '12 pm';
    }
  }

  /// Returns the weather icon based on the temperature
  String getWeatherIcon(int temperature) {
    const weatherIcons = [
      {'max': 0, 'icon': '❄️'},
      {'max': 10, 'icon': '🌬️'},
      {'max': 20, 'icon': '🌥️'},
      {'max': 30, 'icon': '☀️'},
      {'max': 40, 'icon': '🌞'},
    ];

    for (var entry in weatherIcons) {
      int maxTemp = entry['max'] as int;
      if (temperature <= maxTemp) {
        return entry['icon'] as String;
      }
    }

    return '🔥';
  }
}
