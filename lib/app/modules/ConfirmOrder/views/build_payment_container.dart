import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

List<String> _pays = [
  'assets/icons/union.svg',
  'assets/icons/apple.svg',
  'assets/icons/paypal.svg'
];

List<String> _payNames = ['****386 4342', 'Pay with Apple', 'Pay with PayPal'];

class BuildPaymentContainer extends StatelessWidget {
  const BuildPaymentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMaterialModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            context: (context),
            builder: (BuildContext context) {
              return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  height: 689.h,
                  width: 375.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: SvgPicture.asset('assets/icons/header.svg')),
                      SizedBox(height: 24.h),
                      MyText(
                        text: 'Your Payments',
                        size: 18.sp,
                        weight: kfiveWeight,
                        color: kblack,
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 72.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: kgreenColor),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/fav.svg'),
                                SizedBox(width: 16.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: 'Cash on delivery',
                                      size: 16.sp,
                                      weight: ksevenWeight,
                                      color: kblack,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    MyText(
                                      text: 'Provide cash',
                                      size: 12.sp,
                                      weight: kfourWeight,
                                      color: klightgrey,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SvgPicture.asset('assets/icons/radio.svg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 23.h),
                      MyText(
                        text: 'Wallet',
                        size: 16.sp,
                        weight: kfiveWeight,
                        color: kblack,
                      ),
                      SizedBox(height: 10.h),
                      ...List.generate(
                        _pays.length,
                        (index) => BuildPaymentList(index),
                      ),
                      SizedBox(height: 22.h),
                      MyText(
                        text: '+ Add payment method',
                        size: 14.sp,
                        weight: kfiveWeight,
                        color: kblack,
                      ),
                      SizedBox(height: 34.h),
                      MyText(
                        text: 'Credits',
                        size: 16.sp,
                        weight: kfiveWeight,
                        color: kblack,
                      ),
                      SizedBox(height: 11.h),
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        width: 327.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: klightgrey),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/appCash.svg'),
                                SizedBox(width: 16.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: 'App Cash',
                                      size: 16.sp,
                                      weight: ksevenWeight,
                                      color: kblack,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff040415),
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
            });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        width: 327.w,
        decoration: BoxDecoration(
          border: Border.all(color: klightgrey),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Payment',
              size: 18.sp,
              weight: kfiveWeight,
              color: kblack,
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/cod.svg'),
                    SizedBox(width: 18.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Cash on Delivery',
                          size: 14.sp,
                          weight: kfiveWeight,
                          color: kblack,
                        ),
                        MyText(
                          text: r'$88.60',
                          size: 14.sp,
                          weight: kfiveWeight,
                          color: klightgrey,
                        ),
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kblack,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  BuildPaymentList(int index) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PAYMENT_METHODS);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        width: 327.w,
        decoration: BoxDecoration(
          border: Border.all(color: klightgrey),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('${_pays[index]}'),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: '${_payNames[index]}',
                      size: 16.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                  ],
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xff040415),
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
