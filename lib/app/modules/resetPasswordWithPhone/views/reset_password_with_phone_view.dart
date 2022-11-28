import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/back_button.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/reset_password_with_phone_controller.dart';

class ResetPasswordWithPhoneView
    extends GetView<ResetPasswordWithPhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kbackground,
          elevation: 0,
          leading: backButton(),
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
                    "Please enter your phone number, we will\nsend a verification code to your phone\nnumber.",
                size: 16.sp,
                weight: kfourWeight,
                color: klightgrey,
              ),
              SizedBox(height: 22.h),
              MyText(
                text: "Phone Number",
                size: 14.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              SizedBox(height: 7.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: ktextStyle(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(16),
                        child: SvgPicture.asset("assets/icons/phone.svg")),
                    hintText: 'Enter Phone Number',
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
                    Get.toNamed(Routes.OTP_NUMBER_FORGOT);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
