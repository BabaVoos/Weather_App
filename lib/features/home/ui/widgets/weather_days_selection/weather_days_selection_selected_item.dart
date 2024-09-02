import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/theming/text_styles.dart';

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
        Row(
          children: [
            Container(
              color: ColorsManager.whiteColor,
              width: 1.w,
              height: 20.h,
            ),
            horizontalSpacing(5),
            Text(
              title,
              style: TextStylesManager.font16WhiteRegular,
            ),
            horizontalSpacing(5),
            Container(
              color: ColorsManager.whiteColor,
              width: 1.w,
              height: 20.h,
            ),
          ],
        ),
        Text(
          '•',
          style: TextStylesManager.font20WhiteRegular,
        ),
      ],
    );
  }
}
