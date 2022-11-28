import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/home_controller.dart';
import 'home_view.dart';

List<String> popularCategories = [
  'ALL',
  'Italian',
  'Vegetarian',
  'Healthy Food'
];

List<String> popularImages = [
  'assets/icons/popularImage1.png',
  'assets/icons/popularImage2.png',
];

class BuildPopularRightNow extends StatelessWidget {
  const BuildPopularRightNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: "Popular Right Now",
              size: 17.sp,
              weight: ksevenWeight,
              color: kblack,
            ),
            MyText(
              text: "See All",
              size: 13.sp,
              weight: ksevenWeight,
              color: kgreenColor,
            ),
          ],
        ),
        SizedBox(height: 17.h),
        SizedBox(
          height: 45.h,
          child: GetBuilder<HomeController>(
            builder: (controller) => ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                    popularCategories.length,
                    (index) => InkWell(
                          onTap: () {
                            controller.popularContainerColor(index);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 14),
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: controller.selectedIndexPopular == index
                                  ? kgreenColor
                                  : kwhiteColor,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                              child: MyText(
                                  text: "${popularCategories[index]}",
                                  size: 12.sp,
                                  weight:
                                      controller.selectedIndexPopular == index
                                          ? kfiveWeight
                                          : kfourWeight,
                                  color:
                                      controller.selectedIndexPopular == index
                                          ? kwhiteColor
                                          : Colors.black),
                            ),
                          ),
                        ))
              ],
            ),
          ),
        ),
        SizedBox(height: 21.h),
        SizedBox(
          height: 295.h,
          child: GetBuilder<HomeController>(
            builder: (controller) {
              return ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ...List.generate(popularImages.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 14),
                      padding: EdgeInsets.only(
                          top: 13, bottom: 17, right: 10, left: 10),
                      width: 265.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kwhiteColor,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            height: 164.h,
                            width: 286.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("${popularImages[index]}"),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 26.h,
                                    width: 71.w,
                                    decoration: BoxDecoration(
                                      color: kblack.withOpacity(0.48),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "Free Delivery",
                                        size: 12.sp,
                                        weight: kfiveWeight,
                                        color: kwhiteColor,
                                      ),
                                    ),
                                  ),
                                  RoundCheckBox(
                                    checkedColor: Colors.transparent,
                                    uncheckedColor: Colors.transparent,
                                    border:
                                        Border.all(color: Colors.transparent),
                                    uncheckedWidget: Icon(
                                      Icons.favorite_border_outlined,
                                      color: kwhiteColor,
                                    ),
                                    checkedWidget: Icon(
                                      Icons.favorite,
                                      color: kwhiteColor,
                                    ),
                                    onTap: (selected) {},
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 11.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Marina Coastal Food",
                                size: 13.sp,
                                weight: kfiveWeight,
                                color: kblack,
                              ),
                              MyText(
                                text: "30 min",
                                size: 12.sp,
                                weight: kfiveWeight,
                                color: kblack,
                              )
                            ],
                          ),
                          SizedBox(height: 11.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Color(0xffFFB534),
                                  ),
                                  MyText(
                                    text: "4.7",
                                    size: 12.sp,
                                    weight: kfiveWeight,
                                    color: Color(0xffFFB534),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  MyText(
                                    text: "(452 reviews)",
                                    size: 12.sp,
                                    weight: kfourWeight,
                                    color: klightgrey,
                                  ),
                                ],
                              ),
                              MyText(
                                text: r"$0 Delivery fee",
                                size: 12.sp,
                                weight: kfiveWeight,
                                color: klightgrey,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
