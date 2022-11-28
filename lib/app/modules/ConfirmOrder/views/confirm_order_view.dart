import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/confirm_order_controller.dart';
import 'build_header_container.dart';
import 'build_payment_container.dart';
import 'build_summary_container.dart';
import 'buld_tip_container.dart';

class ConfirmOrderView extends GetView<ConfirmOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26.h),
                Center(
                  child: MyText(
                    text: 'Confirm Order',
                    size: 21.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                ),
                BuildHeaderContainer(),
                SizedBox(height: 27.h),
                BuildSummaryContainer(),
                SizedBox(height: 10.h),
                BuildPaymentContainer(),
                SizedBox(height: 10.h),
                BuildTipContainer(),
                SizedBox(height: 31.h),
                Center(
                  child: SizedBox(
                    height: 50.h,
                    width: Get.width,
                    child: MyButton(
                      text: 'Checkout',
                      onPress: () {
                        showAlertDialog(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

showAlertDialog(BuildContext context) {
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    content: Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 506.h,
      width: 310.w,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                Icons.close,
                color: kblack,
              ),
            ),
          ),
          MyText(
            text: "Thank you for your order",
            size: 17.sp,
            weight: kfourWeight,
            color: kgreenColor,
          ),
          SizedBox(height: 20.h),
          MyText(
            text: "Keep tracking you order , It will be deliverd\nsoon.",
            size: 12.sp,
            weight: kfiveWeight,
            color: kblack,
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: 180.w,
            height: 35.h,
            child: MyButton(
              text: 'Track Order',
              onPress: () {
                Get.toNamed(Routes.TRACK_ORDER);
              },
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: 180.w,
            height: 35.h,
            child: MyButton(
              text: 'Order Details',
              onPress: () {
                Get.toNamed(Routes.ORDER_DETAILS);
              },
            ),
          ),
          SizedBox(height: 20.h),
          Divider(
            thickness: 1,
            color: klightgrey,
          ),
          SizedBox(height: 12.h),
          MyText(
            text: "Please feel free to cantact us for any questions",
            size: 12.sp,
            weight: kfourWeight,
            color: kblack,
          ),
          SizedBox(height: 19.h),
          Container(
            height: 35.h,
            width: 180.w,
            decoration: BoxDecoration(
              color: kwhiteColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kgreenColor),
            ),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.CONTACT_SUPPORT);
              },
              child: Center(
                child: MyText(
                  text: "Contact support",
                  size: 14.sp,
                  weight: ksevenWeight,
                  color: kgreenColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 70.h),
          Flexible(
            child: Image.asset(
              'assets/icons/onboardlogo.png',
              height: 52.h,
            ),
          )
        ],
      ),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
