import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/cubit/home_state.dart';
import '../../../data/models/current_weather_data_response.dart';
import 'weather_details_container.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    super.key,
    required this.state,
  });

  final HomeState? state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: state?.whenOrNull(
        currentWeatherDataSuccess:
            (CurrentWeatherDataResponse? currentWeatherDataResponse) =>
                setupSuccess(
          currentWeatherDataResponse!,
        ),
        currentWeatherDataError: (_) => setupError(),
        currentWeatherDataloading: () => setupLoading(),
      ),
    );
  }

  Widget setupSuccess(CurrentWeatherDataResponse currentWeatherDataResponse) {
    return WeatherDetailsContainer(
      currentWeatherDataResponse: currentWeatherDataResponse,
    );
  }

  Widget setupError() {
    return Text(
      'There was an error getting the weather data',
      style: TextStylesManager.font15GreyRegular,
    );
  }

  Widget setupLoading() {
    return Container(
      color: ColorsManager.greyColor,
      width: double.infinity,
      height: .15.sh,
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
