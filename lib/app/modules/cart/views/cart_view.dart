import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../../restaurantDetail/views/build_bottom_sheet_content.dart';
import '../../restaurantDetail/views/build_click_row.dart';
import '../controllers/cart_controller.dart';
import 'bottom_sheet.dart';

CartController controller = Get.put(CartController());

List<String> _images = [
  'assets/icons/rowImage4.png',
  'assets/icons/rowImage3.png',
  'assets/icons/rowImage2.png'
];

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26.h),
                Center(
                  child: MyText(
                    text: 'My Cart',
                    size: 21.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.DELIVERY_OPTION);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    margin: EdgeInsets.only(top: 39),
                    height: 109.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      color: kgreenColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: 'Delivery to Home',
                              size: 16.sp,
                              weight: ksevenWeight,
                              color: kwhiteColor,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: kwhiteColor,
                            )
                          ],
                        ),
                        MyText(
                          text: '27H8+RC Mi’ilya , bornad street, Israel ',
                          size: 16.sp,
                          weight: kfourWeight,
                          color: kwhiteColor,
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          height: 24.h,
                          width: 59.w,
                          decoration: BoxDecoration(
                            color: kwhiteColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: MyText(
                              text: '2.4 km',
                              size: 16.sp,
                              weight: kfourWeight,
                              color: kgreenColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                Container(
                  width: 327.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Your Order (3)',
                        size: 17.sp,
                        weight: ksevenWeight,
                        color: kblack,
                      ),
                      ...List.generate(
                          _images.length,
                          (index) => GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.only(top: 20),
                                  width: 327.w,
                                  height: 110.h,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: klightgrey),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          {
                                            showMaterialModalBottomSheet(
                                                enableDrag: false,
                                                bounce: false,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                ),
                                                context: (context),
                                                builder:
                                                    (BuildContext context) =>
                                                        StatefulBuilder(
                                                          builder: (BuildContext
                                                                  context,
                                                              void Function(
                                                                      void
                                                                          Function())
                                                                  myState) {
                                                            return SingleChildScrollView(
                                                              physics:
                                                                  ScrollPhysics(),
                                                              controller:
                                                                  ModalScrollController
                                                                      .of(context),
                                                              child:
                                                                  BuildBottomSheetContent(),
                                                            );
                                                          },
                                                        ));
                                          }
                                          ;
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 16),
                                          height: 85.h,
                                          width: 85.w,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  '${_images[index]}'),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          MyText(
                                            text: 'German hamburger',
                                            size: 16.sp,
                                            weight: kfiveWeight,
                                            color: kblack,
                                          ),
                                          SizedBox(height: 16.h),
                                          Row(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 16),
                                                height: 40.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF8F8F8),
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller.decrement();
                                                      },
                                                      child: SvgPicture.asset(
                                                          'assets/icons/remove.svg'),
                                                    ),
                                                    Obx(
                                                      () => MyText(
                                                        text:
                                                            '${controller.count}',
                                                        size: 16.sp,
                                                        weight: kfiveWeight,
                                                        color: kblack,
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller.increment();
                                                      },
                                                      child: SvgPicture.asset(
                                                          'assets/icons/add.svg'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              MyText(
                                                text: r'$19.99',
                                                size: 16.sp,
                                                weight: kfiveWeight,
                                                color: kgreenColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                Center(
                  child: SizedBox(
                    height: 50.h,
                    width: 300.w,
                    child: MyButton(
                      text: 'Place Order',
                      onPress: () {
                        Get.toNamed(Routes.CONFIRM_ORDER);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
