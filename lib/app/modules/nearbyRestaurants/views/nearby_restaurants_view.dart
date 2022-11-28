import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/back_button.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/nearby_restaurants_controller.dart';

List<String> nearbyimages = [
  'assets/icons/popularImage1.png',
  'assets/icons/popularImage2.png',
  'assets/icons/popularImage1.png',
  'assets/icons/popularImage2.png',
];

class NearbyRestaurantsView extends GetView<NearbyRestaurantsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kbackground,
          appBar: AppBar(
            backgroundColor: kbackground,
            elevation: 0,
            leading: backButton(),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "For you",
                    size: 16.sp,
                    weight: kfourWeight,
                    color: klightgrey,
                  ),
                  MyText(
                    text: "Nearby Restaurant",
                    size: 24.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                  SizedBox(height: 17.h),
                  SizedBox(
                    height: 700.h,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        ...List.generate(nearbyimages.length, (index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(Routes.RESTAURANT_DETAIL);
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 25, left: 15),
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
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, top: 10),
                                    height: 164.h,
                                    width: 286.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "${nearbyimages[index]}"),
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
                                              borderRadius:
                                                  BorderRadius.circular(8),
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
                                          FavoriteButton(
                                            iconSize: 30,
                                            iconDisabledColor: kwhiteColor,
                                            valueChanged: (_) {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                            ),
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
