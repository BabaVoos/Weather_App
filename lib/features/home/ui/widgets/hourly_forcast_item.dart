import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class HourlyForcastItem extends StatelessWidget {
  const HourlyForcastItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        color: ColorsManager.greyColor,
      ),
      child: Column(
        children: [
          Text(
            '10 am',
            style: TextStylesManager.font16GreyRegular,
          ),
          verticalSpacing(5),
          SvgPicture.asset(
            'assets/svgs/thunderstorm.svg',
            width: 30.w,
            height: 30.h,
          ),
          verticalSpacing(5),
          Text(
            '16°',
            style: TextStylesManager.font16WhiteRegular,
          ),
        ],
      ),
    );
  }
}
