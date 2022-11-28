import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../../Constants/borders.dart';
import '../controllers/signupwithphonenumber_controller.dart';

class SignupwithphonenumberView
    extends GetView<SignupwithphonenumberController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Container(
                height: 270.h,
                width: 375.w,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color(0xff34D186).withOpacity(0.37),
                      Color(0xff34D186)
                    ],
                    radius: 1.0,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 58,
                      left: 96,
                      right: 29,
                      bottom: 17,
                      child: Image.asset(
                        "assets/icons/signupHeaderTwo.png",
                        height: 195.h,
                        width: 253.w,
                      ),
                    ),
                    Positioned(
                      top: 34,
                      left: 34,
                      right: 208,
                      bottom: 160,
                      child: Image.asset(
                        "assets/icons/signupLogo.png",
                        height: 59.h,
                        width: 133.w,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: MyText(
                        text: "Skip",
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: klightgrey,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    MyText(
                      text: "Sign Up",
                      size: 23.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                    SizedBox(height: 10.h),
                    MyText(
                      text: "Order to your location in one click!",
                      size: 14.sp,
                      weight: kfourWeight,
                      color: klightgrey,
                    ),
                    SizedBox(height: 26.h),
                    TextFormField(
                      style: ktextStyle(),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: kbackground,
                          hintText: 'Your phone number',
                          hintStyle: khintStyle(),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/phone.svg'),
                          ),
                          border: enableborder,
                          enabledBorder: focusedborder,
                          focusedBorder: enableborder),
                    ),
                    SizedBox(height: 26.h),
                    Center(child: SvgPicture.asset('assets/icons/or.svg')),
                    SizedBox(height: 19.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/icons/apple.png",
                          height: 51.h,
                          width: 84.w,
                        ),
                        Image.asset(
                          "assets/icons/google.png",
                          height: 51.h,
                          width: 84.w,
                        ),
                        Image.asset(
                          "assets/icons/facebook.png",
                          height: 51.h,
                          width: 84.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: MyText(
                        text: "I don’t have social media",
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: kgreenColor,
                      ),
                    ),
                    SizedBox(height: 43.h),
                    Center(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.offAndToNamed(Routes.OTPCODE);
                            },
                            child: Container(
                              height: 52.h,
                              width: 213.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: kgreenColor,
                              ),
                              child: Center(
                                child: MyText(
                                  text: "Sign Up",
                                  size: 14.sp,
                                  weight: ksevenWeight,
                                  color: kbackground,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 43.h),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.SIGNIN);
                          Get.toNamed(Routes.SIGNIN);
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account?',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: kblack,
                                  fontWeight: kfourWeight,
                                ),
                              ),
                              TextSpan(
                                text: ' Sign In',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: kgreenColor,
                                  fontWeight: kfiveWeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
