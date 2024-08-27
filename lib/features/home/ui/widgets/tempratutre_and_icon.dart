import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/models/current_weather_data_response.dart';
import 'temprature_description.dart';
import 'temprature_icon.dart';

class TempratutreAndIcon extends StatelessWidget {
  const TempratutreAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (_, current) =>
            current is CurrentWeatherDataloading ||
            current is CurrentWeatherDataSuccess ||
            current is CurrentWeatherDataError,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            currentWeatherDataloading: () => const LinearProgressIndicator(
              color: Colors.white,
            ),
            currentWeatherDataSuccess:
                (CurrentWeatherDataResponse? currentWeatherDataResponse) =>
                    setupSuccess(currentWeatherDataResponse!),
            currentWeatherDataError: (ApiErrorModel apiErrorModel) =>
                setupError(),
          );
        },
      ),
    );
  }

  Widget setupSuccess(CurrentWeatherDataResponse currentWeatherDataResponse) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TempratureDescription(
          description: currentWeatherDataResponse.weather?[0].description,
          temperature: currentWeatherDataResponse.main?.temp,
        ),
        const Spacer(),
        TempratureIcon(
          weatherDescription: currentWeatherDataResponse.weather?[0].main,
        ),
      ],
    );
  }

  Widget setupError() {
    return Text(
      'There was an error getting the weather data',
      style: TextStylesManager.font15GreyRegular,
    );
  }
}
