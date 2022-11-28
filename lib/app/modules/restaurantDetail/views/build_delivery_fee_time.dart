import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

class BuildDeliveryFeeTime extends StatelessWidget {
  const BuildDeliveryFeeTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(left: 24, top: 20, bottom: 17, right: 50),
      height: 84.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: "Delivery fee",
                size: 13.sp,
                weight: kfourWeight,
                color: klightgrey,
              ),
              MyText(
                text: "\$1.50",
                size: 15.sp,
                weight: kfiveWeight,
                color: kblack,
              )
            ],
          ),
          VerticalDivider(
            color: klightgrey,
            thickness: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: "Delivery time",
                size: 13.sp,
                weight: kfourWeight,
                color: klightgrey,
              ),
              MyText(
                text: "36 min",
                size: 15.sp,
                weight: kfiveWeight,
                color: kblack,
              )
            ],
          ),
        ],
      ),
    );
  }
}
