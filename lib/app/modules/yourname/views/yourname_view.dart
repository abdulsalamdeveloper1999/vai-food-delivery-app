import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/login_field.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../../Constants/colors.dart';
import '../controllers/yourname_controller.dart';

class YournameView extends GetView<YournameController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Enter your name",
                size: 24.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(height: 26.h),
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Column(
                  children: [
                    SizedBox(
                      width: 287.w,
                      child: LoginFields(
                        hintText: "First name",
                      ),
                    ),
                    SizedBox(height: 18.h),
                    SizedBox(
                      width: 287.w,
                      child: LoginFields(
                        hintText: "Last Name",
                      ),
                    ),
                    SizedBox(height: 46.h),
                    InkWell(
                      onTap: () {
                        Get.offAndToNamed(Routes.ACCOUNTCOMPLETE);
                      },
                      child: Container(
                        height: 48.h,
                        width: 290.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.sp),
                            color: klightgrey),
                        child: Center(
                          child: MyText(
                            text: "Next",
                            size: 16.sp,
                            weight: ksevenWeight,
                            color: kblack.withOpacity(0.26),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
        )
    );
  }
}
