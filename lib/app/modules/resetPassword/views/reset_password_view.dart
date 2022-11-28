import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
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
                text: "Reset Password",
                size: 24.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(
                height: 8.h,
              ),
              MyText(
                text:
                    "Please enter your email, we will send\nverification code to your email.",
                size: 16.sp,
                weight: kfourWeight,
                color: klightgrey,
              ),
              SizedBox(height: 22.h),
              MyText(
                text: "Email",
                size: 14.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              SizedBox(height: 5.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: TextFormField(
                  style: ktextStyle(),
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    hintStyle: khintStyle(),
                    filled: true,
                    fillColor: kLoginColor,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              SizedBox(
                height: 48.h,
                width: Get.width,
                child: MyButton(
                  text: 'Send',
                  onPress: () {
                    Get.toNamed(Routes.OTP_EMAIL_FORGOT);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
