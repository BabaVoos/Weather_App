import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../data/models/five_days_forecast_response.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/theming/text_styles.dart';
import 'forecast_list_view.dart';

class ForcastBlocBuilder extends StatelessWidget {
  const ForcastBlocBuilder({super.key, required this.state});

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
          return state.maybeWhen(
            fiveDaysForecastDataSuccess: (fiveDaysForecastList) =>
                _setupSuccessOrLoading(fiveDaysForecastList: fiveDaysForecastList, loading: false),
            fiveDaysForecastDataError: (_) => _setupError(),
            fiveDaysForecastDataLoading: () => _setupSuccessOrLoading(loading: true),
            currentWeatherDataloading: () => _setupSuccessOrLoading(
              loading: true
            ),
            orElse: () => Container(),
          );
        },
      ),
    );
  }

  Widget _setupSuccessOrLoading({List<FivdeDaysForecastListItem>? fiveDaysForecastList, bool? loading}) {
    return ForecastListView(
      fiveDaysForecastList: fiveDaysForecastList,
      loading: loading,
    );
  }

  Widget _setupError() {
    return Text(
      'There was an error getting the forecast data',
      style: TextStylesManager.font15GreyRegular,
    );
  }
}
