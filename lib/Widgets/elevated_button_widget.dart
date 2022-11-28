import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/textstyles.dart';

import '../constants/colors.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  final color;
  final text;

  VoidCallback? onPress;
  MyButton({
    Key? key,
    this.color = kgreenColor,
    this.text,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: klightgrey, width: 2),
            //to set border radius to button
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor: color),
      onPressed: onPress,
      child: MyText(
        text: '$text',
        size: 16.sp,
        weight: ksevenWeight,
        color: kwhiteColor,
        fontFamily: 'DMSans',
      ),
    );
  }
}
