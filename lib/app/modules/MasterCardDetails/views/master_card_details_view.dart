import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../ConfirmOrder/views/build_header_container.dart';
import '../../ConfirmOrder/views/build_payment_container.dart';
import '../../ConfirmOrder/views/build_summary_container.dart';
import '../../ConfirmOrder/views/buld_tip_container.dart';
import '../controllers/master_card_details_controller.dart';

class MasterCardDetailsView extends GetView<MasterCardDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(30),
        panel: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SvgPicture.asset('assets/icons/header.svg')),
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: kblack,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.ADD_PAYMENT);
                    },
                    child: MyText(
                      decoration: TextDecoration.underline,
                      text: 'Edit',
                      size: 16.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Mastercard',
                        size: 24.sp,
                        weight: ksevenWeight,
                        color: kblack,
                      ),
                      SizedBox(height: 8),
                      MyText(
                        decoration: TextDecoration.underline,
                        text: '**** 5888',
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: klightgrey,
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/masterCard.svg',
                    height: 66.h,
                  )
                ],
              ),
              SizedBox(height: 30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Expiry date',
                    size: 14.sp,
                    weight: kfiveWeight,
                    color: klightgrey,
                  ),
                  SizedBox(height: 8),
                  MyText(
                    text: '02/2022',
                    size: 16.sp,
                    weight: kfiveWeight,
                    color: kblack,
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: klightgrey,
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/cros.svg'),
                  SizedBox(width: 10.w),
                  MyText(
                    text: 'Remove payment method',
                    size: 14.sp,
                    weight: kfiveWeight,
                    color: kblack,
                  )
                ],
              )
            ],
          ),
        ),
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
                        Get.toNamed(Routes.DELIVERY_OPTION);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
