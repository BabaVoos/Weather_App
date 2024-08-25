import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class WeatherDetailsItem extends StatelessWidget {
  final String title;
  final String value;
  final String unit;
  final String image;

  const WeatherDetailsItem({
    super.key,
    required this.title,
    required this.value,
    required this.unit,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
          width: 30.w,
          height: 30.h,
        ),
        verticalSpacing(10),
        Text(
          '$value $unit',
          style: TextStylesManager.font16WhiteRegular,
        ),
        Text(
          title,
          style: TextStylesManager.font16GreyRegular,
        ),
      ],
    );
  }
}
