import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
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
import '../controllers/add_payment_controller.dart';

class AddPaymentView extends GetView<AddPaymentController> {
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
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: kblack,
                ),
              ),
              SizedBox(height: 30.h),
              MyText(
                text: 'Add payment method',
                size: 24.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(height: 30.h),
              TextFormField(
                controller: controller.nameController,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: kfiveWeight,
                  color: kblack,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: klightgrey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: klightgrey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: klightgrey),
                  ),
                  labelText: 'Card holder name',
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: kfiveWeight,
                    color: Color(0xff8F8F8F),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              TextFormField(
                controller: controller.expiryController,
                obscureText: true,
                obscuringCharacter: '*',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: kfiveWeight,
                  color: kblack,
                ),
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset('assets/icons/mastText.svg'),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: klightgrey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: klightgrey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: klightgrey),
                  ),
                  labelText: 'Card number',
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: kfiveWeight,
                    color: Color(0xff8F8F8F),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  SizedBox(
                    width: 160.w,
                    child: TextFormField(
                      controller: controller.expcontroller,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: kfiveWeight,
                        color: kblack,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelText: 'Expiry date',
                        labelStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: kfiveWeight,
                          color: Color(0xff8F8F8F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160.w,
                    child: TextFormField(
                      controller: controller.cvcController,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: kfiveWeight,
                        color: kblack,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelText: 'CVC',
                        labelStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: kfiveWeight,
                          color: Color(0xff8F8F8F),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 55.h),
              SizedBox(
                height: 50.h,
                width: 310.w,
                child: MyButton(
                  text: 'Save & make payment',
                  onPress: () {
                    Get.toNamed(Routes.CONFIRM_ORDER);
                  },
                ),
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
