import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/app/modules/home/views/build_search_row.dart';

import 'package:get/get.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import '../../../routes/app_pages.dart';
import '../../browse/views/build_search_row_browse.dart';
import '../controllers/search_it_controller.dart';

List<String> _images = [
  'assets/icons/dominos.png',
  'assets/icons/pansi.png',
  'assets/icons/italian.png'
];

class SearchItView extends GetView<SearchItController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SingleChildScrollView(
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
              SizedBox(height: 20.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '980 results for ',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: kfourWeight,
                            color: kblack)),
                    TextSpan(
                      text: ' “Chesse pizza”',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: ksevenWeight,
                        color: kblack,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              ...List.generate(
                  _images.length,
                  (index) => GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.RESTAURANT_DETAIL);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 18),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          height: 251.h,
                          width: 310.w,
                          decoration: BoxDecoration(
                            color: kwhiteColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 164.h,
                                width: 284.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage('${_images[index]}'),
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
                                            text: index == 0
                                                ? "Free Delivery"
                                                : (index == 1)
                                                    ? 'Featured'
                                                    : '',
                                            size: 12.sp,
                                            weight: kfiveWeight,
                                            color: kwhiteColor,
                                          ),
                                        ),
                                      ),
                                      RoundCheckBox(
                                        checkedColor: Colors.transparent,
                                        uncheckedColor: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.transparent),
                                        uncheckedWidget: Icon(
                                          Icons.favorite_border_outlined,
                                          color: kwhiteColor,
                                        ),
                                        checkedWidget: Icon(
                                          Icons.favorite,
                                          color: kwhiteColor,
                                        ),
                                        onTap: (selected) {},
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyText(
                                      text: "Domino’s Pizza",
                                      size: 13.sp,
                                      weight: kfiveWeight,
                                      color: kblack,
                                    ),
                                    MyText(
                                      text: index == 0
                                          ? "40 min"
                                          : (index == 1)
                                              ? '10 min'
                                              : '35 min',
                                      size: 12.sp,
                                      weight: kfiveWeight,
                                      color: kblack,
                                    ),
                                  ],
                                ),
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
                                        color: Color(0xffFFB534),
                                      ),
                                      MyText(
                                        text: "4.8",
                                        size: 13.sp,
                                        weight: kfiveWeight,
                                        color: Color(0xffFFB534),
                                      ),
                                      MyText(
                                        text: "(122 reviews)",
                                        size: 13.sp,
                                        weight: kfiveWeight,
                                        color: klightgrey,
                                      ),
                                    ],
                                  ),
                                  MyText(
                                    text: r"$0 Delivery fee",
                                    size: 12.sp,
                                    weight: kfiveWeight,
                                    color: klightgrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
              )
            ],
          ),
        ),
      ),
    );
  }
}
