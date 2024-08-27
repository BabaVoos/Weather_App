import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../data/models/current_weather_data_response.dart';
import 'weather_details_item.dart';

class WeatherDetailsContainer extends StatelessWidget {
  const WeatherDetailsContainer({super.key, required this.currentWeatherDataResponse});

  final CurrentWeatherDataResponse currentWeatherDataResponse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: ColorsManager.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WeatherDetailsItem(
            image: 'assets/svgs/wind.svg',
            value: '${currentWeatherDataResponse.wind?.speed?.round()}',
            title: 'Wind',
            unit: 'm/s',
          ),
          WeatherDetailsItem(
            image: 'assets/svgs/humidity.svg',
            value: '${currentWeatherDataResponse.main?.humidity}',
            title: 'Humidity',
            unit: '%',
          ),
          WeatherDetailsItem(
            image: 'assets/svgs/clouds.svg',
            value: '${currentWeatherDataResponse.clouds?.all}',
            title: 'Cloudiness',
            unit: '%',
          ),
        ],
      ),
    );
  }
}
