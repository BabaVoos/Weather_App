import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import 'hourly_forcast_item.dart';

class HourlyForcastListView extends StatelessWidget {
  const HourlyForcastListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        cacheExtent: 20,
        itemBuilder: (_, index) => const HourlyForcastItem(),
        separatorBuilder: (_, index) => horizontalSpacing(16),
        itemCount: 10,
      ),
    );
  }
}
