import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stuttgart',
              style: TextStylesManager.font20WhiteRegular
            ),
            Text(
              '12 September, Sunday',
              style: TextStylesManager.font15GreyRegular
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            color: ColorsManager.greyColor,
          ),
          child: const Icon(
            Icons.light_mode_outlined,
            color: ColorsManager.whiteColor,
          ),
        ),
      ],
    );
  }
}
