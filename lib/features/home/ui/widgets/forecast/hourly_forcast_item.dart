import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/five_days_forecast_response.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/helpers/extinsions.dart';

class HourlyForcastItem extends StatelessWidget {
  const HourlyForcastItem({
    super.key,
    required this.fivdeDaysForecastListItem,
    required this.index,
  });

  final FivdeDaysForecastListItem fivdeDaysForecastListItem;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        color: ColorsManager.greyColor,
      ),
      child: fivdeDaysForecastListItem.main?.temp == 0
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Text(
                  fivdeDaysForecastListItem.date ?? '',
                  style: TextStylesManager.font16GreyRegular,
                ),
                verticalSpacing(5),
                Text(
                  _getWeatherIcon(
                      fivdeDaysForecastListItem.main?.temp?.toCelsius()),
                  style: TextStylesManager.font20WhiteRegular
                      .copyWith(fontSize: 30.sp),
                ),
                verticalSpacing(5),
                Text(
                  '${fivdeDaysForecastListItem.main?.temp?.toCelsius()}°',
                  style: TextStylesManager.font16WhiteRegular,
                ),
              ],
            ),
    );
  }

  /// Returns the weather icon based on the temperature
  String _getWeatherIcon(int? temperature) {
    const weatherIcons = [
      {'max': 0, 'icon': '❄️'},
      {'max': 10, 'icon': '🌬️'},
      {'max': 20, 'icon': '🌥️'},
      {'max': 30, 'icon': '☀️'},
      {'max': 40, 'icon': '🌞'},
    ];

    for (var entry in weatherIcons) {
      int maxTemp = entry['max'] as int;
      if (temperature! <= maxTemp) {
        return entry['icon'] as String;
      }
    }

    return '🔥';
  }
}
