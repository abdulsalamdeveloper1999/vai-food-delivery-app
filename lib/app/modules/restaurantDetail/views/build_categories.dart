import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/restaurant_detail_controller.dart';

List<String> items = [
  'Popular Items',
  'Pizza & Pasta',
  'Salads',
  'Drinks',
  'Add and Save'
];

class BuildCategories extends StatelessWidget {
  const BuildCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: SizedBox(
        height: 45.h,
        child: GetBuilder<RestaurantDetailController>(
          builder: (controller) => ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(
                  items.length,
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
                                text: "${items[index]}",
                                size: 12.sp,
                                weight: controller.selectedIndexPopular == index
                                    ? kfiveWeight
                                    : kfourWeight,
                                color: controller.selectedIndexPopular == index
                                    ? kwhiteColor
                                    : Colors.black),
                          ),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
