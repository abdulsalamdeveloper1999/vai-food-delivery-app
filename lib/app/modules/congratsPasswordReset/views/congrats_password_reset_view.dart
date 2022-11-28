import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/congrats_password_reset_controller.dart';

class CongratsPasswordResetView
    extends GetView<CongratsPasswordResetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/congrats.png",
            height: 181.h,
          ),
          SizedBox(height: 40.h),
          MyText(
            text: "Password Changed!",
            size: 24.sp,
            weight: ksevenWeight,
            color: kblack,
          ),
          SizedBox(height: 8.h),
          MyText(
            align: TextAlign.center,
            text:
                "Password changed successfully, you can\nlogin again with a new password.",
            size: 16.sp,
            weight: kfourWeight,
            color: klightgrey,
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 48.h,
            width: 290.w,
            child: MyButton(
              text: 'Done',
              onPress: () {
                Get.offAndToNamed(Routes.HOME);
              },
            ),
          )
        ],
      ),
    ));
  }
}
