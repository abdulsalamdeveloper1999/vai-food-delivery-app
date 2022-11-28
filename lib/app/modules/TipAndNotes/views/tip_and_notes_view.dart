import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../../Widgets/elevated_button_widget.dart';
import '../controllers/tip_and_notes_controller.dart';

List<String> courierTip = [
  'assets/icons/fiveDollar.svg',
  'assets/icons/tendollar.svg',
  'assets/icons/fifteendollar.svg'
];

class TipAndNotesView extends GetView<TipAndNotesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: kblack,
                ),
              ),
              SizedBox(height: 18.h),
              MyText(
                text: "Tips and Notes",
                size: 24.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(height: 55.h),
              SingleChildScrollView(
                child: Column(
                  children: [
                    MyText(
                      text: "Add Notes",
                      size: 15.sp,
                      weight: kfiveWeight,
                      color: Color(0xff36414C),
                    ),
                    SizedBox(height: 9.h),
                    Container(
                      height: 113.h,
                      width: 327.w,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: controller.addNotesController,
                        style: TextStyle(
                          fontWeight: kfourWeight,
                          fontSize: 13.sp,
                          color: Color(0xff7F7F7F),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Type here',
                          hintStyle: TextStyle(
                            fontWeight: kfourWeight,
                            fontSize: 13.sp,
                            color: Color(0xff7F7F7F),
                          ),
                          filled: true,
                          fillColor: Color(0xffF5F5F5),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 37.h),
              MyText(
                text: "Courier tip",
                size: 18.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              SizedBox(height: 28.h),
              Center(
                child: SizedBox(
                  width: 155.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        courierTip.length,
                        (index) => GetBuilder<TipAndNotesController>(
                            builder: (controller) {
                          return GestureDetector(
                            onTap: () {
                              controller.change(index);
                            },
                            child: SvgPicture.asset(
                              '${courierTip[index]}',
                              color: controller.selectedIndex == index
                                  ? kgreenColor
                                  : klightgrey,
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.CUSTOM_AMOUNT);
                  },
                  child: MyText(
                    decoration: TextDecoration.underline,
                    text: "Custom amount",
                    size: 13.sp,
                    weight: kfiveWeight,
                    color: kgreenColor,
                  ),
                ),
              ),
              SizedBox(height: 19.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 48.h,
                width: 327.w,
                decoration: BoxDecoration(
                  color: klightgrey.withOpacity(0.11),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/mastText.svg',
                          height: 25.h,
                        ),
                        SizedBox(width: 16.w),
                        MyText(
                          text: "****386 4342",
                          size: 13.sp,
                          weight: kfiveWeight,
                          color: Color(0xff36414C),
                        ),
                      ],
                    ),
                    MyText(
                      text: "Change",
                      size: 13.sp,
                      weight: kfiveWeight,
                      color: kgreenColor,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Center(
                child: SizedBox(
                  height: 50.h,
                  width: 290.w,
                  child: MyButton(
                    text: 'Done',
                    onPress: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
