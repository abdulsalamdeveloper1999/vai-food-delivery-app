import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/back_button.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:get/get.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../controllers/filter_controller.dart';

List<String> maxDelivery = [
  'assets/icons/five.svg',
  'assets/icons/ten.svg',
  'assets/icons/fifteen.svg',
  'assets/icons/twenty.svg'
];

List<String> priceRange = [
  'assets/icons/priceRange.svg',
  'assets/icons/priceRangeTwo.svg',
  'assets/icons/priceRangeThree.svg',
];

class FilterView extends GetView<FilterController> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      appBar: AppBar(
        backgroundColor: kwhiteColor,
        elevation: 0,
        leading: backButton(),
        title: MyText(
          text: "Sort and Filter",
          size: 21.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 20),
            child: MyText(
              text: "Clear All ",
              size: 12.sp,
              weight: kfiveWeight,
              color: kgreenColor,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 42, left: 22, right: 22, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Sort",
                size: 22.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              SizedBox(height: 11.h),
              BuildSortRow(
                prefixUri: 'assets/icons/pickforyou.svg',
                text: 'Picked for you',
              ),
              BuildSortRow(
                prefixUri: 'assets/icons/mostPopular.svg',
                text: 'Most popular',
              ),
              BuildSortRow(
                prefixUri: 'assets/icons/rating.svg',
                text: 'Rating',
              ),
              BuildSortRow(
                prefixUri: 'assets/icons/deliveryTime.svg',
                text: 'Delivery time',
                suffixUri: 'assets/icons/sufficCheck.svg',
              ),
              SizedBox(height: 15.h),
              MyText(
                text: "From vai ",
                size: 22.sp,
                weight: kfiveWeight,
                color: kblack,
              ),
              SizedBox(height: 18.h),
              BuildSwitchRowSecond(),
              SizedBox(height: 15.h),
              BuildSwitchRow(),
              SizedBox(height: 23.h),
              BuildMaxDeliveryFee(),
              SizedBox(height: 18.h),
              BuildPriceRange(),
              SizedBox(height: 28.h),
              Center(
                child: SizedBox(
                  height: 52.h,
                  width: 301.w,
                  child: MyButton(
                    text: 'Apply',
                    onPress: () {
                      Get.back();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPriceRange extends StatelessWidget {
  const BuildPriceRange({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: "Price range",
          size: 22.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        SizedBox(height: 23.h),
        Center(
          child: SizedBox(
            height: 70.h,
            child: GetBuilder<FilterController>(
              builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      priceRange.length,
                      (index) => InkWell(
                        onTap: () {
                          controller.pricechangeColor(index);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 21),
                          child: SvgPicture.asset(
                            "${priceRange[index]}",
                            color: controller.priceselectedIndex == index
                                ? kgreenColor
                                : kblack.withOpacity(0.35),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class BuildMaxDeliveryFee extends StatelessWidget {
  const BuildMaxDeliveryFee({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: "Max Delivery Fee",
          size: 22.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        SizedBox(height: 23.h),
        Center(
          child: SizedBox(
              height: 70.h,
              child: GetBuilder<FilterController>(builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        maxDelivery.length,
                        (index) => InkWell(
                              onTap: () {
                                controller.changeColor(index);
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 21),
                                child: SvgPicture.asset(
                                  "${maxDelivery[index]}",
                                  color: controller.selectedIndex == index
                                      ? kgreenColor
                                      : kblack.withOpacity(0.35),
                                ),
                              ),
                            ))
                  ],
                );
              })),
        )
      ],
    );
  }
}

class BuildSwitchRowSecond extends StatelessWidget {
  const BuildSwitchRowSecond({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 345.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/icons/deals.svg"),
              SizedBox(
                width: 9.w,
              ),
              MyText(
                text: "Deals",
                size: 14.sp,
                weight: kfourWeight,
                color: kblack,
              ),
            ],
          ),
          GetBuilder<FilterController>(
            builder: (controller) {
              return CupertinoSwitch(
                  value: controller.statusTwo,
                  onChanged: (value) {
                    controller.changeSecondSwitch(value);
                  });
            },
          )
        ],
      ),
    );
  }
}

class BuildSwitchRow extends StatelessWidget {
  const BuildSwitchRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 345.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/icons/theBest.svg"),
              SizedBox(
                width: 9.w,
              ),
              MyText(
                text: "The Best",
                size: 14.sp,
                weight: kfourWeight,
                color: kblack,
              ),
            ],
          ),
          GetBuilder<FilterController>(
            builder: (controller) {
              return CupertinoSwitch(
                  value: controller.status,
                  onChanged: (value) {
                    controller.changeSwitch(value);
                  });
            },
          )
        ],
      ),
    );
  }
}

class BuildSortRow extends StatelessWidget {
  var prefixUri;
  var text;
  var suffixUri;
  var roundCheckBox;
  BuildSortRow(
      {Key? key, this.prefixUri, this.text, this.suffixUri, this.roundCheckBox})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 35.h,
      width: 335.w,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Row(children: [
              SvgPicture.asset("$prefixUri"),
              SizedBox(width: 9.w),
              MyText(
                text: "$text",
                size: 14.sp,
                weight: kfourWeight,
                color: kblack,
              )
            ]),
          ),
          RoundCheckBox(
            uncheckedColor: Colors.transparent,
            checkedColor: Colors.transparent,
            border: Border.all(color: Colors.transparent),
            uncheckedWidget: Icon(
              Icons.circle,
              color: kwhiteColor,
            ),
            checkedWidget: Icon(Icons.check, color: kgreenColor),
            onTap: (selected) {},
          )
        ],
      ),
    );
  }
}
