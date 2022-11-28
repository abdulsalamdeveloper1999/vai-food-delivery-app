import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/forgotpassword_controller.dart';
import 'buildContainer.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kbackground,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_rounded,
            color: kblack,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, top: 24, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Forgot Password",
                size: 24.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(
                height: 8.h,
              ),
              MyText(
                text: "Choose how you want to sign in:",
                size: 16.sp,
                weight: kfourWeight,
                color: klightgrey,
              ),
              SizedBox(height: 32.h),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.RESET_PASSWORD_WITH_PHONE);
                },
                child: buildContainer(
                  UpText: 'Phone Number',
                  DownText: 'Send to your phone number',
                  svgUri: 'assets/icons/forgotphone.svg',
                ),
              ),
              SizedBox(height: 18.h),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.RESET_PASSWORD);
                },
                child: buildContainer(
                  UpText: 'Email',
                  DownText: 'Send to your email',
                  svgUri: 'assets/icons/forgotemail.svg',
                ),
              ),
              SizedBox(height: 38.h),
              SizedBox(
                height: 48.h,
                width: Get.width,
                child: MyButton(
                  text: 'Continue',
                  onPress: () {
                    Get.toNamed(Routes.RESET_PASSWORD);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
