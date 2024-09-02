import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../data/models/current_weather_data_response.dart';
import 'hourly_forcast_item.dart';
import '../../data/models/five_days_forecast_response.dart';

class ForecastListView extends StatelessWidget {
  const ForecastListView({
    super.key,
    required this.fiveDaysForecastList,
    required this.loading,
  });

  final List<FivdeDaysForecastListItem>? fiveDaysForecastList;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      cacheExtent: 20,
      itemBuilder: (_, index) => HourlyForcastItem(
        index: index,
        fivdeDaysForecastListItem: loading == true
            ? FivdeDaysForecastListItem(main: Main(temp: 0))
            : fiveDaysForecastList?[index] ??
                FivdeDaysForecastListItem(main: Main(temp: 0)),
      ),
      separatorBuilder: (_, index) => horizontalSpacing(16),
      itemCount: fiveDaysForecastList?.length ?? 5,
    );
  }
}
