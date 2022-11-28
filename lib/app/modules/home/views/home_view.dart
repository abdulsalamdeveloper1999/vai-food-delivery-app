import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'build_add_location.dart';
import 'build_categories_list.dart';
import 'build_nearby_restaurants.dart';
import 'build_popular_right_now.dart';
import 'build_search_row.dart';

var height = 0.0;

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.selectedValue;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 39),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Deliver now",
                    size: 22.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.NOTIFICATIONS);
                    },
                    child: Icon(
                      Icons.notifications_none,
                      color: kblack,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              BuildAddLocation(),
              SizedBox(height: 28.h),
              BuildSearchRow(),
              SizedBox(height: 29.h),
              BuildCategoriesList(),
              SizedBox(height: 27.h),
              BuildNearbyRestaurants(),
              SizedBox(height: 46.h),
              BuildPopularRightNow()
            ],
          ),
        ),
      ),
    ));
  }
}
