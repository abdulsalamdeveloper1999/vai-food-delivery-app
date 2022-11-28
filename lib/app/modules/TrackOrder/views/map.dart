import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/app/modules/PinLocation/views/pin_location_view.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:im_stepper/stepper.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

int activeStep = 4;

int upperBound = 6;

List<StepperData> stepperData = [
  StepperData(
    title: "Your order has been received", subtitle: '',
  ),
  StepperData(
    title: "The restaurant is preparing your food",subtitle: ''
  ),
  StepperData(
    title: "Your order has been picked up for delivery",subtitle: ''
  ),
  StepperData(
    title: "Your order has been picked up for delivery",subtitle: ''
  ),
];

class MapLocation extends StatelessWidget {
  final ScrollController scrollController;
  const MapLocation({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23, left: 24, bottom: 23),
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: radius,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        controller: scrollController,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/header.svg'),
              SizedBox(height: 20.h),
              MyText(
                text: "Estimated delivery time is 6:19 PM",
                size: 18.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              SizedBox(height: 20.h),
              MyText(
                text: "Your order is already on its way to you!",
                size: 14.sp,
                weight: kfourWeight,
                color: klightgrey,
              ),
              SizedBox(height: 26.h),
              anotherStepper(),
              Divider(
                thickness: 1,
                color: klightgrey,
              ),
              SizedBox(height: 24.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 76.h,
                width: 301.w,
                decoration: BoxDecoration(
                  color: klightgrey.withOpacity(0.11),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/log.png',
                          height: 42.h,
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'Support center',
                              size: 14.sp,
                              weight: ksevenWeight,
                              color: kblack,
                            ),
                            SizedBox(height: 5.h),
                            MyText(
                              text: 'Order #701',
                              size: 13.sp,
                              weight: kfourWeight,
                              color: klightgrey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/phonegrey.svg'),
                        SizedBox(width: 13.w),
                        SvgPicture.asset('assets/icons/msgGrey.svg'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                padding: EdgeInsets.only(top: 16, left: 16),
                margin: EdgeInsets.only(bottom: 11),
                height: 262.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: klightgrey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Order status activites",
                      size: 14.sp,
                      weight: kfiveWeight,
                      color: kblack,
                    ),
                    Expanded(child: verticalStepper())
                  ],
                ),
              ),
              SizedBox(height: 11.h),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                margin: EdgeInsets.only(bottom: 36),
                height: 50.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: klightgrey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/llist.svg'),
                        SizedBox(width: 12.w),
                        MyText(
                          text: 'Order Receipt',
                          size: 16.sp,
                          weight: kfiveWeight,
                          color: klightgrey,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: kgreenColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 52.h,
                width: 301.w,
                child: MyButton(
                  text: 'Live Tracking',
                  onPress: () {
                    Get.toNamed(Routes.LIVE_TRACKING);
                  },
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ],
      ),
    );
  }
}

Widget anotherStepper() {
  return SizedBox(
    width: 307.w,
    child: IconStepper(
      enableNextPreviousButtons: false,
      lineColor: kgreenColor,
      lineLength: 60,
      stepRadius: 25,
      stepColor: Colors.transparent,
      activeStepColor: Colors.transparent,
      activeStepBorderColor: Colors.transparent,
      lineDotRadius: 2,
      icons: [
        Icon(
          Icons.list_alt,
          color: kgreenColor,
        ),
        Icon(
          Icons.outdoor_grill_outlined,
          color: kgreenColor,
        ),
        Icon(
          Icons.delivery_dining_outlined,
          color: kgreenColor,
        ),
        Icon(
          Icons.check_circle_outline,
          color: klightgrey,
        ),
      ],

      // activeStep property set to activeStep variable defined above.
      activeStep: activeStep,

      // This ensures step-tapping updates the activeStep.
      onStepReached: (index) {
        // setState(() {
        //   activeStep = index;
        // });
      },
    ),
  );
}

Widget verticalStepper() {
  return AnotherStepper(
    titleTextStyle:
        TextStyle(color: kgreenColor, fontSize: 13.sp, fontWeight: kfiveWeight),
    gap: 15,
    stepperList: stepperData,
    stepperDirection: Axis.vertical,
    horizontalStepperHeight: 10,
    dotWidget: Container(
      height: 17,
      width: 17,
      decoration: BoxDecoration(
        color: kgreenColor,
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    ),
    activeBarColor: kgreenColor,
    inActiveBarColor: Colors.grey,
    activeIndex: 2,
  );
}
