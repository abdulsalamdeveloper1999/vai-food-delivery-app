import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BuildHeaderContainer extends StatelessWidget {
  const BuildHeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DELIVERY_OPTION);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: EdgeInsets.only(top: 39),
        height: 109.h,
        width: 327.w,
        decoration: BoxDecoration(
          color: kgreenColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'Delivery to Home',
                  size: 16.sp,
                  weight: ksevenWeight,
                  color: kwhiteColor,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kwhiteColor,
                )
              ],
            ),
            MyText(
              text: '27H8+RC Mi’ilya , bornad street, Israel ',
              size: 16.sp,
              weight: kfourWeight,
              color: kwhiteColor,
            ),
            SizedBox(height: 5.h),
            Container(
              height: 24.h,
              width: 59.w,
              decoration: BoxDecoration(
                color: kwhiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: MyText(
                  text: '2.4 km',
                  size: 16.sp,
                  weight: kfourWeight,
                  color: kgreenColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
