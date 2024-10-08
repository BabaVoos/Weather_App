import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_weight_helper.dart';
import 'colors_manager.dart';

class TextStylesManager {
  static TextStyle font15GreyRegular = GoogleFonts.chakraPetch(
    color: Colors.grey,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16WhiteRegular = GoogleFonts.russoOne(
    color: ColorsManager.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16GreyRegularRussonOne = GoogleFonts.russoOne(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16GreyRegular = GoogleFonts.chakraPetch(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font20WhiteRegular = GoogleFonts.russoOne(
    color: ColorsManager.whiteColor,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font80WhiteRegular = GoogleFonts.russoOne(
    color: ColorsManager.whiteColor,
    fontSize: 80.sp,
    fontWeight: FontWeightHelper.regular,
  );
}
