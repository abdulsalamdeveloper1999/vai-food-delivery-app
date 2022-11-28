import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/back_button.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'build_apartment_container.dart';

List<String> deliveryOption = ['Delivery', 'Pickup'];

class DeliveryOptionView extends StatefulWidget {
  const DeliveryOptionView({Key? key}) : super(key: key);

  @override
  State<DeliveryOptionView> createState() => _DeliveryOptionViewState();
}

class _DeliveryOptionViewState extends State<DeliveryOptionView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController? tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kwhiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 48, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    backButton(),
                    MyText(
                      text: "Delivery options",
                      size: 21.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.transparent,
                    ),
                  ],
                ),
                SizedBox(height: 41.h),
                ButtonsTabBar(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 67,
                    ),
                    height: 50.h,
                    controller: tabController,
                    backgroundColor: kgreenColor,
                    unselectedBackgroundColor: Colors.white,
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(
                        color: kgreenColor, fontWeight: FontWeight.bold),
                    borderWidth: 1,
                    unselectedBorderColor: klightgrey,
                    borderColor: kgreenColor,
                    radius: 100,
                    tabs: [
                      Tab(
                        text: 'Delivery',
                      ),
                      Tab(
                        text: 'Pick up',
                      )
                    ]),
                SizedBox(height: 9.h),
                MyText(
                  text: "You set your order as delivery.",
                  size: 11.sp,
                  weight: kfourWeight,
                  color: kblack,
                ),
                Container(
                  height: Get.height,
                  child: TabBarView(
                      physics: ScrollPhysics(),
                      controller: tabController,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 44.h),
                            BuildApartmentContainer(),
                            SizedBox(height: 17.h),
                            Image.asset("assets/icons/deliveryoptionMap.png"),
                            SizedBox(height: 100.h),
                            Center(
                              child: SizedBox(
                                height: 48.h,
                                width: 275.w,
                                child: MyButton(
                                  text: 'Save',
                                  onPress: () {
                                    Get.toNamed(Routes.PIN_LOCATION);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 44.h),
                            MyText(
                              text:
                                  "Order tracking will appear after checkout to\npick up your order on time.",
                              size: 13.sp,
                              weight: kfiveWeight,
                              color: kblack,
                            ),
                            SizedBox(height: 41.h),
                            MyText(
                              text: "Restaurant address",
                              size: 16.sp,
                              weight: ksevenWeight,
                              color: kblack,
                            ),
                            SizedBox(height: 17.h),
                            Image.asset("assets/icons/deliveryoptionMap.png"),
                            SizedBox(
                              height: 100.h,
                            ),
                            Center(
                              child: SizedBox(
                                height: 48.h,
                                width: 275.w,
                                child: MyButton(
                                  text: 'Save',
                                  onPress: () {
                                    Get.toNamed(Routes.PIN_LOCATION);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
