import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';

import 'package:get/get.dart';

import '../controllers/live_tracking_controller.dart';

class LiveTrackingView extends GetView<LiveTrackingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icons/livetrack.png'),
              ),
            ),
          ),
          Positioned(
            top: 660,
            left: 26,
            right: 26,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 80.h,
              width: 322.w,
              decoration: BoxDecoration(
                color: kblack.withOpacity(0.8),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Leo just picked up your food",
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: kwhiteColor,
                      ),
                      SizedBox(height: 10.h),
                      MyText(
                        text: "He is on his way to you.",
                        size: 12.sp,
                        weight: kfourWeight,
                        color: kwhiteColor,
                      )
                    ],
                  ),
                  Container(
                    height: 28.h,
                    width: 52.w,
                    decoration: BoxDecoration(
                      color: Color(0xff2D644A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: MyText(
                        text: "6:11 pm",
                        size: 12.sp,
                        weight: kfiveWeight,
                        color: kwhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 590,
            left: 299,
            right: 26,
            child: Column(
              children: [
                SvgPicture.asset('assets/icons/centermap.svg'),
              ],
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                    padding: const EdgeInsets.only(top: 46.0, left: 28),
                    child: SvgPicture.asset("assets/icons/backGrey.svg")),
              )
            ],
          ),
        ],
      )),
    );
  }
}
