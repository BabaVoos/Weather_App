import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/extinsions.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/cubit/home_cubit.dart';
import 'weather_days_selection_selected_item.dart';

class WeatherDaysSelection extends StatefulWidget {
  const WeatherDaysSelection({
    super.key,
  });

  @override
  State<WeatherDaysSelection> createState() => _WeatherDaysSelectionState();
}

class _WeatherDaysSelectionState extends State<WeatherDaysSelection> {
  final List<String> _titles = [
    'Today',
    'Tomorrow',
    DateTime.now().add(const Duration(days: 2)).toFormattedTimeDM(),
    DateTime.now().add(const Duration(days: 3)).toFormattedTimeDM(),
    DateTime.now().add(const Duration(days: 4)).toFormattedTimeDM(),
  ];

  int _selctedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cubit = HomeCubit.get(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        _titles.length,
        (index) {
          return buildDayItem(index, cubit);
        },
      ),
    );
  }

  Padding buildDayItem(int index, HomeCubit cubit) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selctedItemIndex = index;
          });
          cubit.updateIndex(_selctedItemIndex);
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _selctedItemIndex == index
              ? WeatherDaysSelectionSelectedItem(
                  title: _titles[index],
                )
              : Text(
                  _titles[index],
                  style: TextStylesManager.font16GreyRegularRussonOne,
                ),
        ),
      ),
    );
  }
}
