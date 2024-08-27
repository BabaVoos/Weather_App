import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../logic/cubit/home_cubit.dart';
import '../logic/cubit/home_state.dart';
import 'widgets/hourly_forcast_list_view.dart';
import 'widgets/my_location_on_map.dart';
import 'widgets/tempratutre_and_icon.dart';
import 'widgets/home_screen.dart';
import 'widgets/weather_days_selection.dart';
import 'widgets/weather_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (_, current) =>
                current is CurrentWeatherDataSuccess ||
                current is CurrentWeatherDataError ||
                current is CurrentWeatherDataloading,
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    HomeTopBar(
                      state: state,
                    ),
                    verticalSpacing(20),
                    TempratutreAndIcon(state: state,),
                    verticalSpacing(20),
                    const WeatherDetails(),
                    verticalSpacing(20),
                    const WeatherDaysSelection(),
                    verticalSpacing(10),
                    const HourlyForcastListView(),
                    verticalSpacing(15),
                    const MyLocationOnMap(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
