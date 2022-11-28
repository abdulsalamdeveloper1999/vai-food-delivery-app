import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/otpcode_controller.dart';

class OtpcodeView extends GetView<OtpcodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kbackground,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.arrow_back_sharp,
                color: kblack,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Verify your phone number",
                  size: 24.sp,
                  weight: ksevenWeight,
                  color: kblack,
                  // fontFamily: 'DMSans',
                ),
                SizedBox(height: 10.h),
                MyText(
                  text: "Enter the 4-digit code sent to you at ",
                  size: 16.sp,
                  weight: kfourWeight,
                  color: klightgrey,
                ),
                MyText(
                  text: "+96 97592530",
                  size: 16.sp,
                  weight: kfourWeight,
                  color: kblack,
                ),
                SizedBox(
                  height: 39.h,
                ),
                buildPinCode(context),
                SizedBox(height: 26.h),
                Center(
                  child: MyText(
                    text: 'Resend code via SMS',
                    size: 14.sp,
                    weight: ksevenWeight,
                    decoration: TextDecoration.underline,
                    color: kblack.withOpacity(0.58),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget buildPinCode(BuildContext context) {
    return OtpTextField(
      borderWidth: 1,
      focusedBorderColor: kgreenColor,
      fieldWidth: 50.w,
      borderRadius: BorderRadius.circular(8),
      numberOfFields: 4,
      borderColor: klightgrey,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        Get.offAndToNamed(Routes.YOURNAME);
      }, // end onSubmit
    );
  }
}
