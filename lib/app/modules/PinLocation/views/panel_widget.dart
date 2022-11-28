import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/app/modules/PinLocation/views/pin_location_view.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/elevated_button_widget.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/pin_location_controller.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController scrollController;
  const PanelWidget({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23, left: 24),
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
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/pinPlace.png'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(
                    text: "John’s apartment",
                    size: 16.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                  SizedBox(height: 4.h),
                  MyText(
                    text: "27H8+RC Mi’ilya, Israel",
                    size: 14.sp,
                    weight: kfiveWeight,
                    color: klightgrey,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Divider(
            thickness: 1,
            color: klightgrey,
          ),
          SizedBox(height: 6.h),
          MyText(
            text: "Save Address As",
            size: 15.sp,
            weight: kfiveWeight,
            color: kblack,
          ),
          SizedBox(height: 15.h),
          GetBuilder<PinLocationController>(builder: (controller) {
            return Row(
              children: [
                ...List.generate(
                  3,
                  (index) => GestureDetector(
                    onTap: () {
                      controller.address(index);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      height: 32.h,
                      width: 66.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: klightgrey),
                        color: controller.selectedIndex == index
                            ? kgreenColor.withOpacity(0.28)
                            : Colors.white,
                      ),
                      child: Center(
                        child: MyText(
                          text: "${address[index]}",
                          size: 12.sp,
                          weight: kfiveWeight,
                          color: controller.selectedIndex == index
                              ? kgreenColor
                              : klightgrey,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
          SizedBox(height: 40.h),
          Center(
            child: SizedBox(
              height: 48.h,
              width: 250.w,
              child: MyButton(
                  text: 'Continue',
                  onPress: () {
                    Get.toNamed(Routes.PIN_LOCATION_TWO);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
