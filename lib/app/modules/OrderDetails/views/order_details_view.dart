import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';

import 'package:get/get.dart';

import '../controllers/order_details_controller.dart';

class OrderDetailsView extends GetView<OrderDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kbackground,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset('assets/icons/backGrey.svg')),
                    SizedBox(width: 79.w),
                    MyText(
                      text: "Order Receipt",
                      size: 24.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    )
                  ],
                ),
                MyText(
                  text: "Order number #701",
                  size: 12.sp,
                  weight: kfiveWeight,
                  color: kgreenColor,
                ),
                SizedBox(height: 2.h),
                MyText(
                  text: "Pie pizza resturnat",
                  size: 12.sp,
                  weight: kfiveWeight,
                  color: kgreenColor,
                ),
                SizedBox(height: 83.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 352.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: kwhiteColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Subtotal",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          MyText(
                            text: r"$87.10",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          )
                        ],
                      ),
                      Divider(
                        color: klightgrey,
                        thickness: 1,
                      ),
                      SizedBox(height: 16.h),
                      foodRow(
                        leftText: '1x',
                        middleText: 'German hamburger',
                        rightText: '\$19.99',
                      ),
                      SizedBox(height: 8.h),
                      foodRow(
                        leftText: '1x',
                        middleText: 'Japan Hainanese Sashimi',
                        rightText: '\$37.99',
                      ),
                      SizedBox(height: 8.h),
                      sauceRow(leftText: 'Teriyaki Sause', righText: '\$0'),
                      SizedBox(height: 8.h),
                      sauceRow(leftText: 'Omelet', righText: '\$2'),
                      SizedBox(height: 8.h),
                      foodRow(
                        leftText: '1x',
                        middleText: 'Pizza Pepper Beef Lumpia',
                        rightText: '\$27.12',
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Delivery fee",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          MyText(
                            text: r"$1.5",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: klightgrey,
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Total Payment",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          MyText(
                            text: r"$89.10",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          )
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Order date ",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          MyText(
                            text: r"28/10/2021",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          )
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Delvery time",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          MyText(
                            text: r"16:55",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                SizedBox(height: 108,),
                Image.asset(
                  'assets/icons/onboardlogo.png',
                  height: 60.h,
                ),
              ],
            ),
          )),
    );
  }
}

Widget sauceRow({required String leftText, required String righText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          MyText(
            text: "1x",
            size: 12.sp,
            weight: kfiveWeight,
            color: Colors.transparent,
          ),
          SizedBox(width: 2.w),
          MyText(
            text: "$leftText",
            size: 12.sp,
            weight: kfiveWeight,
            color: klightgrey,
          ),
        ],
      ),
      MyText(
        text: "$righText",
        size: 12.sp,
        weight: kfiveWeight,
        color: klightgrey,
      ),
    ],
  );
}

Widget foodRow(
    {required String leftText,
    required String middleText,
    required String rightText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          MyText(
            text: "$leftText",
            size: 14.sp,
            weight: kfiveWeight,
            color: klightgrey,
          ),
          SizedBox(width: 2.w),
          MyText(
            text: "$middleText",
            size: 14.sp,
            weight: kfiveWeight,
            color: kblack,
          ),
        ],
      ),
      MyText(
        text: "$rightText",
        size: 12.sp,
        weight: kfiveWeight,
        color: klightgrey,
      ),
    ],
  );
}
