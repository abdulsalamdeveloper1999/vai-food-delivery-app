import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/app/modules/PinLocation/views/pin_location_view.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

class AnotherPanelWidget extends StatelessWidget {
  final ScrollController scrollController;
  const AnotherPanelWidget({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23, left: 24, right: 23),
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: radius,
      ),
      child: ListView(
        controller: scrollController,
        children: [
          MyText(
            text: "Address’s Details",
            size: 18.sp,
            weight: kfiveWeight,
            color: kblack,
          ),
          SizedBox(height: 23.h),
          MyText(
            text: "Please provid your exact loaction :",
            size: 14.sp,
            weight: kfourWeight,
            color: kblack,
          ),
          Container(
            padding: EdgeInsets.only(top: 19, left: 21, right: 112),
            margin: EdgeInsets.only(top: 6),
            height: 328.h,
            width: 375.w,
            decoration: BoxDecoration(
              color: klightgrey.withOpacity(0.11),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Container(
              height: 146.h,
              width: 218.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildRow(text: 'Building number :'),
                  buildRow(text: 'Entrance :'),
                  buildRow(text: 'Floor :'),
                  buildRow(text: 'Appartment :'),
                  Row(
                    children: [
                      MyText(
                        text: "Private house",
                        size: 14.sp,
                        weight: ksevenWeight,
                        color: kblack,
                      ),
                      SizedBox(width: 75.w),
                      RoundCheckBox(
                        size: 26,
                        checkedColor: Colors.transparent,
                        uncheckedColor: Colors.transparent,
                        borderColor: Colors.transparent,
                        border: Border.all(color: Colors.transparent),
                        uncheckedWidget: Icon(
                          Icons.check_circle,
                          color: klightgrey,
                        ),
                        checkedWidget: Icon(
                          Icons.check_circle,
                          color: kgreenColor,
                        ),
                        onTap: (selected) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 135.h),
          SizedBox(
            height: 48.h,
            width: 250.w,
            child: MyButton(
              text: 'Save Address',
              onPress: () {
                Get.toNamed(Routes.BOTTOMBAR);
              },
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  Row buildRow({required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: "$text",
          size: 14.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          height: 26.h,
          width: 68.w,
          decoration: BoxDecoration(
            color: klightgrey.withOpacity(0.12),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: MyText(
              text: "Optional",
              size: 11.sp,
              weight: kfourWeight,
              color: kblack.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}
