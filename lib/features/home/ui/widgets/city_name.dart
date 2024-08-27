import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/text_styles.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/theming/colors_manager.dart';

class CityName extends StatelessWidget {
  const CityName({
    super.key,
    required this.state,
  });

  final HomeState? state;

  @override
  Widget build(BuildContext context) {
    final cubit = HomeCubit.get(context);
    return SizedBox(
      child: state!.whenOrNull(
        currentWeatherDataSuccess: (_) => Text(
          cubit.cityName ?? '',
          style: TextStylesManager.font20WhiteRegular,
        ),
        currentWeatherDataloading: () => Container(
          color: ColorsManager.whiteColor,
          width: .3.sw,
          height: 2.h,
        ),
      ),
    );
  }
}
