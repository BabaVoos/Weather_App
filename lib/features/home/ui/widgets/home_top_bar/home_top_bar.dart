import 'package:flutter/material.dart';
import '../../../logic/cubit/home_state.dart';
import '../../../../../core/helpers/extinsions.dart';
import '../../../../../core/theming/text_styles.dart';
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
      ],
    );
  }

  Text buildDate() {
    return Text(
      DateTime.now().toFormattedDateDME(),
      style: TextStylesManager.font15GreyRegular,
    );
  }
}
