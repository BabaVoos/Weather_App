import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/text_styles.dart';
import 'weather_days_selection_selected_item.dart';

class WeatherDaysSelection extends StatefulWidget {
  const WeatherDaysSelection({
    super.key,
  });

  @override
  State<WeatherDaysSelection> createState() => _WeatherDaysSelectionState();
}

class _WeatherDaysSelectionState extends State<WeatherDaysSelection> {
  final List<String> _titles = ['Today', 'Tomorrow', 'Next 10 days'];

  int _selctedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        _titles.length,
        (index) {
          return buildDayItem(index);
        },
      ),
    );
  }

  Padding buildDayItem(int index) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selctedItemIndex = index;
          });
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
