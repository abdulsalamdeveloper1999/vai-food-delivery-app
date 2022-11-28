import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';

import 'package:get/get.dart';

import '../controllers/browse_controller.dart';
import 'build_search_row_browse.dart';

List<String> _categories = ['All Categories', 'Top Categories', 'Popular'];

List<String> _allcategoriesImages = [
  'assets/icons/pizza.png',
  'assets/icons/browfastfood.png',
  'assets/icons/convience.png',
  'assets/icons/mexican.png',
  'assets/icons/lastestDeals.png',
  'assets/icons/broBurger.png',
  'assets/icons/restaurantReward.png',
  'assets/icons/pasta.png',
  'assets/icons/veg.png',
  'assets/icons/chinese.png',
];

List<String> _categoriesNames = [
  'Pizza',
  'Fast Food',
  'Convenience',
  'Mexican',
  'Latest Deals',
  'Burger',
  'Restaurant\nrewards',
  'Pasta',
  'Vegetable',
  'Chinese',
];

BrowseController controller = Get.put(BrowseController());

class BrowseView extends GetView<BrowseController> {
  ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    controller.selectedIndex;
    return Scaffold(
      backgroundColor: kbackground,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, top: 38, bottom: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Browser",
                size: 22.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(height: 20.h),
              BuildSearchRowBrowse(),
              SizedBox(height: 22.h),
              SizedBox(
                height: 45.h,
                child: GetBuilder<BrowseController>(
                  builder: (controller) => ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(
                          _categories.length,
                          (index) => InkWell(
                                onTap: () {
                                  controller.change(index);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 14),
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    color: controller.selectedIndex == index
                                        ? kgreenColor
                                        : kwhiteColor,
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  child: Center(
                                    child: MyText(
                                        text: "${_categories[index]}",
                                        size: 12.sp,
                                        weight:
                                            controller.selectedIndex == index
                                                ? kfiveWeight
                                                : kfourWeight,
                                        color: controller.selectedIndex == index
                                            ? kwhiteColor
                                            : Colors.black),
                                  ),
                                ),
                              ))
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 450.h,
                  child: GridView.count(
                    controller: scrollController,
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 17.0,
                    mainAxisSpacing: 16.0,
                    children: [
                      ...List.generate(
                        _allcategoriesImages.length,
                        (index) => Container(
                          height: 119.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      '${_allcategoriesImages[index]}')),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: MyText(
                              text: "${_categoriesNames[index]}",
                              size: 16.sp,
                              weight: ksevenWeight,
                              color: kwhiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
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
