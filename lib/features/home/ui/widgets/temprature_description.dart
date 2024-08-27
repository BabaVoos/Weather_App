import 'package:flutter/material.dart';
import '../../../../core/helpers/extinsions.dart';
import '../../../../core/theming/text_styles.dart';

class TempratureDescription extends StatelessWidget {
  const TempratureDescription({
    super.key,
    required this.temperature,
    required this.description,
  });

  final double? temperature;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${temperature?.toCelsius()}°',
          style: TextStylesManager.font80WhiteRegular,
        ),
        Text(
          description ?? '',
          style: TextStylesManager.font15GreyRegular,
        ),
      ],
    );
  }
}
