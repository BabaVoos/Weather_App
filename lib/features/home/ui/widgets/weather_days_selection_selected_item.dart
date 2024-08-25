import 'package:flutter/material.dart';
import 'package:weather_app/core/theming/text_styles.dart';

class WeatherDaysSelectionSelectedItem extends StatelessWidget {
  final String title;
  const WeatherDaysSelectionSelectedItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStylesManager.font16WhiteRegular,
        ),
        Text(
          '•',
          style: TextStylesManager.font20WhiteRegular,
        ),
      ],
    );
  }
}
