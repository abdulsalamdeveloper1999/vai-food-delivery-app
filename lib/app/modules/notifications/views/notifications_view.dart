import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/back_button.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import '../../DeliveryOption/views/build_apartment_container.dart';

List<String> _images = [
  'assets/icons/notione.png',
  'assets/icons/notitwo.png',
  'assets/icons/notithree.png'
];
List<String> _title = [
  'Squid Sweet and Sour Salad, J...',
  'Black Pepper Beef Lumpia',
  'KFC'
];
List<String> _item = ['3 items', '1 item', '2 items'];
List<String> _subTtitle = [
  'Order is on the way - delivery',
  'Order ready - pick up',
  'On the way '
];

List<String> saleImages = ['assets/icons/mc.png', 'assets/icons/brown.png'];

List<String> saleImagesTwo = [
  'assets/icons/notithree.png',
  'assets/icons/rahat.png',
  'assets/icons/cup.png',
  'assets/icons/notifive.png'
];

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView>
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
                      text: "Notifications",
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
                      horizontal: 57,
                    ),
                    height: 50.h,
                    controller: tabController,
                    backgroundColor: kgreenColor,
                    unselectedBackgroundColor: Colors.white,
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    unselectedLabelStyle:
                        TextStyle(color: kblack, fontWeight: FontWeight.bold),
                    borderWidth: 1,
                    unselectedBorderColor: klightgrey,
                    borderColor: kgreenColor,
                    radius: 100,
                    tabs: [
                      Tab(
                        text: 'Delivery',
                      ),
                      Tab(
                        text: 'News & Update',
                      )
                    ]),
                Container(
                  height: Get.height,
                  child: TabBarView(
                    physics: ScrollPhysics(),
                    controller: tabController,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 22.h),
                          MyText(
                            text: "Current",
                            size: 18.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          SizedBox(height: 17.h),
                          ...List.generate(
                            _images.length,
                            (index) => Container(
                              width: 328,
                              padding: EdgeInsets.only(bottom: 22, top: 20),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: klightgrey),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 16),
                                    height: 48.h,
                                    width: 48.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("${_images[index]}"),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyText(
                                        text: "${_title[index]}",
                                        size: 15.sp,
                                        weight: ksevenWeight,
                                        color: kblack,
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          MyText(
                                            text: "${_subTtitle[index]}",
                                            size: 15.sp,
                                            weight: ksevenWeight,
                                            color: kgreenColor,
                                          ),
                                          SizedBox(width: 20.w),
                                          MyText(
                                            text: "${_item[index]}",
                                            size: 15.sp,
                                            weight: ksevenWeight,
                                            color: klightgrey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          MyText(
                            text: "October 2021",
                            size: 18.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          Container(
                            width: 328,
                            padding: EdgeInsets.only(bottom: 22, top: 20),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: klightgrey),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16),
                                  height: 48.h,
                                  width: 48.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/notifour.png"),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: "Japan Hainanese Sashimi, Squ...",
                                      size: 15.sp,
                                      weight: ksevenWeight,
                                      color: kblack,
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        MyText(
                                          text: "Delivered",
                                          size: 15.sp,
                                          weight: ksevenWeight,
                                          color: kgreenColor,
                                        ),
                                        SizedBox(width: 20.w),
                                        MyText(
                                          text: "5 items",
                                          size: 15.sp,
                                          weight: ksevenWeight,
                                          color: klightgrey,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          MyText(
                            text: "August 2021",
                            size: 18.sp,
                            weight: kfiveWeight,
                            color: kblack,
                          ),
                          Container(
                            width: 328,
                            padding: EdgeInsets.only(bottom: 22, top: 20),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: klightgrey),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16),
                                  height: 48.h,
                                  width: 48.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/notifive.png"),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: "Burger king",
                                      size: 15.sp,
                                      weight: ksevenWeight,
                                      color: kblack,
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        MyText(
                                          text: "Delivered",
                                          size: 15.sp,
                                          weight: ksevenWeight,
                                          color: kgreenColor,
                                        ),
                                        SizedBox(width: 20.w),
                                        MyText(
                                          text: "4 items",
                                          size: 15.sp,
                                          weight: ksevenWeight,
                                          color: klightgrey,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 18.h),
                            MyText(
                              text: "New Notification",
                              size: 18.sp,
                              weight: kfiveWeight,
                              color: kblack,
                            ),
                            ...List.generate(
                              2,
                              (index) => buyFree(
                                  image: '${saleImages[index]}',
                                  upperText: 'Sale 50% today',
                                  downText: 'Valid till 20 May'),
                            ),
                            SizedBox(height: 24.h),
                            MyText(
                              text: "This week",
                              size: 18.sp,
                              weight: kfiveWeight,
                              color: klightgrey,
                            ),
                            SizedBox(height: 18.h),
                            Container(
                              height: 500.h,
                              width: 335.w,
                              child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: saleImagesTwo.length,
                                itemBuilder: (context, index) {
                                  return buyFree(
                                      image: '${saleImagesTwo[index]}',
                                      upperText: 'Sale 50% today',
                                      downText: 'Valid till 20 May');
                                },
                                separatorBuilder: (context, index) {
                                  return Divider();
                                },
                              ),
                            )
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //
  // buyFree(
  // image: '${saleImages[index]}',
  // upperText: 'Sale 50% today',
  // downText: 'Valid till 20 May'),
  // ),

  Widget buyFree(
      {required String image,
      required String upperText,
      required String downText}) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PROMOTION);
      },
      child: Container(
        margin: EdgeInsets.only(top: 18),
        height: 50.h,
        width: 175.w,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 27),
              height: 33.h,
              width: 33.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$image'),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "$upperText",
                  size: 15.sp,
                  weight: ksevenWeight,
                  color: kblack,
                ),
                SizedBox(
                  height: 5.h,
                ),
                MyText(
                  text: "$downText",
                  size: 14.sp,
                  weight: kfiveWeight,
                  color: klightgrey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
