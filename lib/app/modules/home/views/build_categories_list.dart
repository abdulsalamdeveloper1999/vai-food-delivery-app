import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import '../../onboarding/views/onboarding_view.dart';

HomeController controller = Get.put(HomeController());

BuildCategoriesList() {
  controller.selectedIndexCategories;

  List<String> catergories = [
    'All',
    'Grocery',
    'Fast Food',
  ];

  List<String> catergoriesType = [
    'Places',
    'Shop',
    'Fast Food',
  ];

  List<String> catergoriesImages = [
    'assets/icons/all.png',
    'assets/icons/grocery.png',
    'assets/icons/fastfood.png'
  ];

  return SingleChildScrollView(
    child: SizedBox(
      height: 60.h,
      child: GetBuilder<HomeController>(
        builder: (controller) => ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            ...List.generate(
                catergories.length,
                (index) => InkWell(
                      onTap: () {
                        controller.containerColor(index);

                        print('tapped' + index.toString());
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.only(
                            left: 8, right: 12, top: 8, bottom: 9),
                        height: 60.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: controller.selectedIndexCategories == index
                              ? kgreenColor
                              : kwhiteColor,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "${catergoriesImages[index]}",
                              height: 43.h,
                              width: 43.w,
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "${catergories[index]}",
                                  size: 12.sp,
                                  weight: controller.selectedIndexCategories == index
                                      ? kfiveWeight
                                      : kfourWeight,
                                  color: controller.selectedIndexCategories == index
                                      ? kwhiteColor
                                      : Colors.black,
                                ),
                                MyText(
                                    text: "${catergoriesType[index]}",
                                    size: 12.sp,
                                    weight: controller.selectedIndexCategories == index
                                        ? kfiveWeight
                                        : kfourWeight,
                                    color: controller.selectedIndexCategories == index
                                        ? kwhiteColor
                                        : Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
          ],
        ),
      ),
    ),
  );
}
