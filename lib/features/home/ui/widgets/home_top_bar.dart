import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/helpers/extinsions.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import 'city_name.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
    required this.state,
  });

  final HomeState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CityName(
              state: state,
            ),
            buildDate(),
          ],
        ),
        const Spacer(),
        buildActionButton(),
      ],
    );
  }

  Container buildActionButton() {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: ColorsManager.greyColor,
      ),
      child: const Icon(
        Icons.light_mode_outlined,
        color: ColorsManager.whiteColor,
      ),
    );
  }

  Text buildDate() {
    return Text(
      DateTime.now().toFormattedDate(),
      style: TextStylesManager.font15GreyRegular,
    );
  }
}
