import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/app/modules/restaurantDetail/controllers/restaurant_detail_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import 'build_click_row.dart';

RestaurantDetailController controller = Get.put(RestaurantDetailController());

class BuildBottomSheetContent extends StatelessWidget {
  const BuildBottomSheetContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550.h,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 204.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/gerburger.png'),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: "German hamburger",
                            size: 20.sp,
                            weight: ksevenWeight,
                            color: kblack,
                          ),
                          MyText(
                            text: "Pansi Resturant ",
                            size: 14.sp,
                            weight: kfiveWeight,
                            color: klightgrey,
                          ),
                          Container(
                            height: 40.h,
                            width: 140.w,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                              color: Color(0xffFAFAFA),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.deccrement();
                                  },
                                  child: SvgPicture.asset(
                                      "assets/icons/remove.svg"),
                                ),
                                Obx(
                                  () => MyText(
                                    text: "${controller.count}",
                                    size: 16.sp,
                                    weight: kfiveWeight,
                                    color: kblack,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.increment();
                                  },
                                  child:
                                      SvgPicture.asset("assets/icons/add.svg"),
                                ),
                                MyText(
                                  text: r"$19.99",
                                  size: 16.sp,
                                  weight: kfiveWeight,
                                  color: kgreenColor,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      RoundCheckBox(
                        checkedColor: Colors.transparent,
                        border: Border.all(color: Colors.transparent),
                        uncheckedWidget: Icon(
                          Icons.favorite_border_outlined,
                          color: kgreenColor,
                        ),
                        checkedWidget: Icon(
                          Icons.favorite,
                          color: kgreenColor,
                        ),
                        onTap: (selected) {},
                      )
                    ],
                  ),
                  SizedBox(height: 23.h),
                  Divider(thickness: 1, color: klightgrey),
                  SizedBox(height: 23.h),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        MyText(
                          text: "Sauce",
                          size: 20.sp,
                          weight: ksevenWeight,
                          color: kblack,
                        ),
                        SizedBox(height: 16.h),
                        Container(
                          width: 327.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: klightgrey),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              BuildCLickRow(
                                text: "Teriyaki",
                              ),
                              Divider(thickness: 1, color: klightgrey),
                              BuildCLickRow(
                                text: 'Yakiniku',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.h),
                        MyText(
                          text: "Add a Topping?",
                          size: 20.sp,
                          weight: ksevenWeight,
                          color: kblack,
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          width: 327.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: klightgrey),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              BuildCLickRow(
                                text: 'Omelet',
                              ),
                              Divider(thickness: 1, color: klightgrey),
                              BuildCLickRow(
                                text: 'Sausage',
                              ),
                              Divider(thickness: 1, color: klightgrey),
                              BuildCLickRow(
                                text: 'Cheese',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: Get.width,
                    height: 54.h,
                    child: MyButton(
                      text: r'Add to Cart ($41.99)',
                      onPress: () {
                        Get.back();
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
