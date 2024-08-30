import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../data/models/five_days_forecast_response.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';
import 'hourly_forcast_item.dart';

class HourlyForcastListView extends StatelessWidget {
  const HourlyForcastListView({super.key, required this.state});

  final HomeState? state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (_, current) =>
            current is FiveDaysForecastDataSuccess ||
            current is FiveDaysForecastDataError ||
            current is FiveDaysForecastDataLoading,
        builder: (context, state) {
          return state.when(
            fiveDaysForecastDataSuccess: (fiveDaysForecastList) =>
                setupSuccessOrLoading(fiveDaysForecastList: fiveDaysForecastList, loading: false),
            fiveDaysForecastDataError: (_) => setupError(),
            fiveDaysForecastDataLoading: () => setupSuccessOrLoading(loading: true),
            currentWeatherDataloading: () => setupSuccessOrLoading(
              loading: true
            ),
            /// todo : need to be fixed so i don't need to use these states here
            initial: () => Container(),
            currentWeatherDataSuccess: (_) => Container(),
            currentWeatherDataError: (_) => Container(),
          );
        },
      ),
    );
  }

  Widget setupSuccessOrLoading({List<FivdeDaysForecastListItem>? fiveDaysForecastList, bool? loading}) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      cacheExtent: 20,
      itemBuilder: (_, index) => HourlyForcastItem(
        index: index,
        temp: loading == true ? 0 : fiveDaysForecastList?[index].main?.temp ?? 0,
      ),
      separatorBuilder: (_, index) => horizontalSpacing(16),
      itemCount: 8,
    );
  }

  Widget setupError() {
    return Text(
      'There was an error getting the forecast data',
      style: TextStylesManager.font15GreyRegular,
    );
  }
}
