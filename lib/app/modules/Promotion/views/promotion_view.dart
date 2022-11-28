import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/back_button.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/promotion_controller.dart';

class PromotionView extends GetView<PromotionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backButton(),
                MyText(
                  text: "Delivery options",
                  size: 21.sp,
                  weight: ksevenWeight,
                  color: kblack,
                ),
                Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.transparent,
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              height: 206.h,
              width: 327.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/icons/hd.png'),
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: '50% Discount\nOn All Desert',
                    size: 24.sp,
                    weight: ksevenWeight,
                    color: kwhiteColor,
                  ),
                  SizedBox(height: 4.h),
                  MyText(
                    text: 'Grab itu now!t',
                    size: 14.sp,
                    weight: kfiveWeight,
                    color: kwhiteColor,
                  ),
                  SizedBox(height: 28.h),
                  Container(
                    height: 36.h,
                    width: 121.w,
                    decoration: BoxDecoration(
                      color: kwhiteColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: MyText(
                        text: 'Order Now',
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: kblack,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(height: 16.h),
            Text(
              'Today 50% discount on all desert menus in kupa with online orders worldwide',
              style: TextStyle(
                  wordSpacing: 5,
                  fontSize: 18.sp,
                  fontWeight: kfiveWeight,
                  color: kblack),
            ),
            SizedBox(height: 16.h),
            Text(
              'Excuse me… Who could ever resist a discount\nfeast? 👀',
              style: TextStyle(
                  wordSpacing: 7,
                  fontSize: 14.sp,
                  fontWeight: kfiveWeight,
                  color: Color(0xff7A7A7A)),
            ),
            SizedBox(height: 16.h),
            Text(
              'There are 25 types of deserts in kupa and all of them are discounted, just order through the kupa app to enjoy this discount. From the best to the best we have prepared for you, may you always be happy when ordering at Kupa. Please choose the best menu for you to eat alone or with your best friends and family.',
              style: TextStyle(
                  wordSpacing: 7,
                  fontSize: 14.sp,
                  fontWeight: kfiveWeight,
                  color: Color(0xff7A7A7A)),
            ),
            SizedBox(height: 16.h),
            Text(
              'So, what’s your call? Let’s roll, order your comfort food now 😉',
              style: TextStyle(
                  wordSpacing: 7,
                  fontSize: 14.sp,
                  fontWeight: kfiveWeight,
                  color: Color(0xff7A7A7A)),
            ),
          ],
        ),
      ),
    );
  }
}
