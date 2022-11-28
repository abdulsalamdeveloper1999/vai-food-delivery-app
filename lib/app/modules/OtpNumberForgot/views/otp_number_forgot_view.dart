import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/elevated_button_widget.dart';
import '../../../../Widgets/my_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_number_forgot_controller.dart';

class OtpNumberForgotView extends GetView<OtpNumberForgotController> {
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
                text: "Verification Code",
                size: 24.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(height: 10.h),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text:
                      'Please enter the code we just sent to your\nphone number',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: kfourWeight,
                    color: klightgrey,
                  ),
                ),
                TextSpan(
                  text: ' (+62) 822 8578 XXX',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: kfourWeight,
                    color: kblack,
                  ),
                ),
              ])),
              SizedBox(
                height: 39.h,
              ),
              buildPinCode(context),
              SizedBox(height: 26.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'If you didn’t receive a code? ',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: kfourWeight,
                          color: klightgrey,
                        ),
                      ),
                      TextSpan(
                        text: ' Resend',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: kfourWeight,
                          color: kgreenColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 43.h),
              SizedBox(
                height: 48.h,
                width: Get.width,
                child: MyButton(
                  text: 'Continue',
                  onPress: () {
                    Get.toNamed(Routes.CREATE_NEW_PASSWORD);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPinCode(BuildContext context) {
    return OtpTextField(
      margin: EdgeInsets.only(right: 15),
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
      // onSubmit: (String verificationCode) {
      //   Get.offAndToNamed(Routes.CREATE_NEW_PASSWORD);
      // }, // end onSubmit
    );
  }
}
