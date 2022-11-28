import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/accountcomplete_controller.dart';

class AccountcompleteView extends GetView<AccountcompleteController> {
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
            text: "Congratulations!",
            size: 24.sp,
            weight: ksevenWeight,
            color: kblack,
            fontFamily: 'Inter',
          ),
          SizedBox(height: 8.h),
          MyText(
            align: TextAlign.center,
            text:
                "Your account is complete, please enjoy the\nbest menu from us.",
            size: 16.sp,
            weight: kfourWeight,
            color: klightgrey,
            fontFamily: 'Inter',
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 48.h,
            width: 290.w,
            child: MyButton(
              text: 'Done',
              onPress: () {
                Get.offAndToNamed(Routes.BOTTOMBAR);
              },
            ),
          )
        ],
      ),
    ));
  }
}
