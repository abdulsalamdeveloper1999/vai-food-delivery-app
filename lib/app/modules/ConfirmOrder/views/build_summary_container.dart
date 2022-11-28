import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BuildSummaryContainer extends StatelessWidget {
  const BuildSummaryContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            text: 'Summary',
            size: 18.sp,
            weight: kfiveWeight,
            color: kblack,
          ),
          SizedBox(height: 16.h),
          BuildPriceRow(price: 'Price', figures: '\$87.10'),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: 'Delivery fee',
                size: 14.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              MyText(
                text: r'10$',
                size: 14.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Divider(
            thickness: 1,
            color: klightgrey,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: 'Total Payment',
                size: 14.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              MyText(
                text: r'$88.6',
                size: 14.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Divider(
            thickness: 1,
            color: klightgrey,
          ),
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: () {
              showMaterialModalBottomSheet(
                enableDrag: true,
                bounce: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                context: (context),
                builder: (BuildContext context) {
                  return BuildStatefulBuilder();
                },
              );
            },
            child: Row(
              children: [
                MyText(
                  text: 'See details',
                  size: 14.sp,
                  weight: ksevenWeight,
                  color: kgreenColor,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kgreenColor,
                  size: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  StatefulBuilder BuildStatefulBuilder() {
    return StatefulBuilder(builder: (BuildContext context, void myState) {
      return Container(
        padding: EdgeInsets.only(top: 17, left: 20, right: 20),
        height: 373.h,
        width: 375.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset('assets/icons/header.svg')),
            SizedBox(height: 20.h),
            MyText(
              text: 'Payment Details',
              size: 18.sp,
              weight: ksevenWeight,
              color: kblack,
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              width: 327.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: klightgrey),
              ),
              child: Column(
                children: [
                  BuildPriceRow(price: 'Price', figures: '\$87.10'),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'German hamburger',
                        size: 12.sp,
                        weight: kfourWeight,
                        color: klightgrey,
                      ),
                      MyText(
                        text: r'$19.99',
                        size: 12.sp,
                        weight: kfourWeight,
                        color: klightgrey,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Japan Hainanese Sashimi',
                        size: 12.sp,
                        weight: kfourWeight,
                        color: klightgrey,
                      ),
                      MyText(
                        text: r'$39.99',
                        size: 12.sp,
                        weight: kfourWeight,
                        color: klightgrey,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Pizza Pepper Beef Lumpia',
                        size: 12.sp,
                        weight: kfourWeight,
                        color: klightgrey,
                      ),
                      MyText(
                        text: r'$27.12',
                        size: 12.sp,
                        weight: kfourWeight,
                        color: klightgrey,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Divider(
                    thickness: 1,
                    color: klightgrey,
                  ),
                  SizedBox(height: 16.h),
                  BuildDeliveryRow(
                    fee: 'Delivery Fee',
                    figures: '\$1.5',
                  ),
                  SizedBox(height: 16.h),
                  Divider(
                    thickness: 1,
                    color: klightgrey,
                  ),
                  SizedBox(height: 16.h),
                  BuildDeliveryRow(
                    fee: 'Total Payment',
                    figures: '\$88.6',
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  Row BuildPriceRow({required String price, required String figures}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: '$price',
          size: 14.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        MyText(
          text: '$figures',
          size: 14.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
      ],
    );
  }

  Row BuildDeliveryRow({required String fee, required String figures}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: '$fee',
          size: 14.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        MyText(
          text: '$figures',
          size: 14.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
      ],
    );
  }
}
