import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

class BuildImageInDetailContainer extends StatelessWidget {
  const BuildImageInDetailContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 379.h,
      width: 374.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage('assets/icons/pansi.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset("assets/icons/backSvg.svg")),
              RoundCheckBox(
                checkedColor: Colors.transparent,
                uncheckedColor: Colors.transparent,
                border: Border.all(color: Colors.transparent),
                uncheckedWidget: Icon(
                  Icons.favorite_border_outlined,
                  color: kwhiteColor,
                  size: 30,
                ),
                checkedWidget: Icon(
                  Icons.favorite,
                  color: kwhiteColor,
                  size: 30,
                ),
                onTap: (selected) {},
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Pansi\nRestaurant",
                size: 28.sp,
                weight: ksevenWeight,
                color: kwhiteColor,
              ),
              SizedBox(height: 9.h),
              MyText(
                text: "Sandwiches · Salad",
                size: 15.sp,
                weight: kfiveWeight,
                color: kwhiteColor,
              ),
              SizedBox(height: 9.h),
              MyText(
                text: "From 12 am to 11 pm",
                size: 15.sp,
                weight: kfourWeight,
                color: kwhiteColor,
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFCF53),
                      ),
                      SizedBox(width: 8.w),
                      MyText(
                        text: "4.8",
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: kwhiteColor,
                      ),
                      SizedBox(width: 8.w),
                      MyText(
                        text: "(122 reviews)",
                        size: 14.sp,
                        weight: kfourWeight,
                        color: kwhiteColor,
                      ),
                    ],
                  ),
                  Container(
                    height: 20.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kwhiteColor.withOpacity(0.48),
                    ),
                    child: Center(
                      child: MyText(
                        text: "0.3 km",
                        size: 12.sp,
                        weight: ksevenWeight,
                        color: kwhiteColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
