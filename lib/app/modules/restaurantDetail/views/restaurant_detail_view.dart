import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:get/get.dart';
import '../controllers/restaurant_detail_controller.dart';
import 'build_categories.dart';
import 'build_delivery_fee_time.dart';
import 'build_food_menu.dart';
import 'build_image_detail_container.dart';

List<String> _rowMenuImages = [
  'assets/icons/rowImage1.png',
  'assets/icons/rowImage2.png',
  'assets/icons/rowImage3.png',
  'assets/icons/rowImage4.png'
];

class RestaurantDetailView extends GetView<RestaurantDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackground,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 2, bottom: 10),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BuildImageInDetailContainer(),
                    SizedBox(height: 30.h),
                    BuildDeliveryFeeTime(),
                    SizedBox(height: 20,),
                    BuildCategories(),
                    SizedBox(height: 16.h),
                    BuildFoodMenu(),
                    SizedBox(height: 30.h),
                    Divider(thickness: 1, color: klightgrey),
                    SizedBox(height: 30.h),
                    MyText(
                      text: "Informations",
                      size: 16.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                    SizedBox(height: 17.h),
                    MyText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Tortor orci sem at facilisis duis\ncras elit. At nibh ultricies diam orci volutpat,\nnon facilisis. Habitasse diam eget lectus\nvenenatis cras enim tellus.\n\nAmet posuere nulla sit laoreet et congue iaculis viverra. Non ultrices faucibus mauris leo.",
                      size: 14.sp,
                      weight: kfourWeight,
                      color: klightgrey,
                    ),
                    SizedBox(height: 23.h),
                    SizedBox(
                      height: 92.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...List.generate(
                              _rowMenuImages.length,
                              (index) => Container(
                                    height: 92.h,
                                    width: 92.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            '${_rowMenuImages[index]}'),
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Divider(thickness: 1, color: klightgrey),
                    SizedBox(height: 30.h),
                    MyText(
                      text: "Address",
                      size: 16.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                    SizedBox(height: 22.h),
                    Container(
                      height: 288.h,
                      width: 309.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/icons/rsdtmap.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 22.h),
                    MyText(
                      text: "King George St 17, Jerusalem",
                      size: 14.sp,
                      weight: kfourWeight,
                      color: klightgrey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
