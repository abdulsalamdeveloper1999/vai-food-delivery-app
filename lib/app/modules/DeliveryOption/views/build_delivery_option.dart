import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';

import 'package:get/get.dart';

import '../controllers/delivery_option_controller.dart';
import 'delivery_option_view.dart';

DeliveryOptionController controller = Get.put(DeliveryOptionController());

class BuildDeliveryOption extends StatelessWidget {
  const BuildDeliveryOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.selectedIndex;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            deliveryOption.length,
            (index) =>
                GetBuilder<DeliveryOptionController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      controller.changeColor(index);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 40.h,
                      width: 162.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: controller.selectedIndex == index
                              ? kgreenColor
                              : klightgrey,
                        ),
                        color: controller.selectedIndex == index
                            ? kgreenColor
                            : kwhiteColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: MyText(
                          text: "${deliveryOption[index]}",
                          size: 13.sp,
                          weight: ksevenWeight,
                          color: controller.selectedIndex == index
                              ? kwhiteColor
                              : kgreenColor,
                        ),
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}
