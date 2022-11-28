import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';

const FontWeight kfourWeight = FontWeight.w400;
const FontWeight kfiveWeight = FontWeight.w500;
const FontWeight ksixWeight = FontWeight.w600;
const FontWeight ksevenWeight = FontWeight.w700;

TextStyle khintStyle() {
  return TextStyle(color: klightgrey, fontSize: 14.sp, fontWeight: kfiveWeight, fontFamily: "Montserrat");
}

TextStyle ktextStyle() {
  return TextStyle(color: kblack, fontSize: 16.sp, fontWeight: kfiveWeight);
}
