import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theming/text_styles.dart';

class TempratutreAndIcon extends StatelessWidget {
  const TempratutreAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                '18°',
                style: TextStylesManager.font80WhiteRegular,
              ),
              Text(
                'Thunderstorm',
                style: TextStylesManager.font15GreyRegular,
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/svgs/thunderstorm.svg',
            width: 100.w,
            height: 100.h,
          ),
        ],
      ),
    );
  }
}
