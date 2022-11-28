import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../../../../Constants/textstyles.dart';
import '../controllers/onboarding_controller.dart';
import 'build_page_indicator.dart';
import 'build_page_view.dart';

OnboardingController controller = Get.put(OnboardingController());

List<String> onboardImages = [
  "assets/icons/onboardImage.png",
  "assets/icons/onboardImage.png",
  "assets/icons/onboardImage.png",
];

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    controller.seletedIndex;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 46.h,
          ),
          Align(
            alignment: Alignment.topRight,
            child: MyText(
              text: "Skip",
              size: 14.sp,
              weight: kfiveWeight,
              color: klightgrey,
            ),
          ),
          SizedBox(
            height: 56.h,
          ),
          Image.asset(
            "assets/icons/onboardlogo.png",
            height: 53.h,
            width: 120.w,
          ),
          SizedBox(
            height: 135.h.h,
          ),
          GetBuilder<OnboardingController>(
            builder: (controller) {
              return Center(
                child: Container(
                  height: 300.h,
                  width: Get.width,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      controller.changeState(index);
                      print(controller.seletedIndex.toString());
                    },
                    controller: PageController(viewportFraction: 0.9),
                    itemCount: onboardImages.length,
                    itemBuilder: (context, index) {
                      return BuildPageView();
                    },
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 72.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(onboardImages.length, (index) {
                return GetBuilder<OnboardingController>(builder: (controller) {
                  return BuildPageIndicator(
                      isActive:
                          controller.seletedIndex == index ? true : false);
                });
              })
            ],
          ),
          SizedBox(
            height: 54.h,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.SIGNUPWITHPHONENUMBER);
            },
            child: Container(
              height: 52.h,
              width: 213.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: kgreenColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "Next",
                    size: 14.sp,
                    color: kbackground,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: kbackground,
                    size: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
