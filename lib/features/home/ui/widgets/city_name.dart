import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/text_styles.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import '../../../../core/theming/colors_manager.dart';

class CityName extends StatelessWidget {
  const CityName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (_, current) => current is CurrentWeatherDataSuccess,
      builder: (context, state) {
        return cubit.cityName != null
            ? Text(
                cubit.cityName ?? '',
                style: TextStylesManager.font20WhiteRegular,
              )
            : const Icon(
              Icons.location_on_outlined,
              color: ColorsManager.whiteColor,
            );
      },
    );
  }
}
