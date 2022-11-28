import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/custom_amount_controller.dart';

class CustomAmountView extends GetView<CustomAmountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_sharp,
                color: kblack,
              ),
            ),
            SizedBox(height: 18.h),
            MyText(
              text: "Custom amount",
              size: 24.sp,
              weight: ksevenWeight,
              color: kblack,
            ),
            SizedBox(height: 8.h),
            MyText(
              text: "Custom your favorite amount for tips.",
              size: 16.sp,
              weight: kfourWeight,
              color: kblack,
            ),
            SizedBox(height: 88.h),
            TextFormField(
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: kfourWeight,
                color: klightgrey,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: klightgrey),
                ),
                prefixText: '\$',
                prefixStyle: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: kfourWeight,
                  color: klightgrey,
                ),
              ),
            ),
            SizedBox(height: 88.h),
            Center(
              child: SizedBox(
                height: 50.h,
                width: 290.w,
                child: MyButton(
                  text: 'Ok',
                  onPress: () {
                    Get.toNamed(Routes.CONFIRM_ORDER);
                  },
                  color: klightgrey,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
