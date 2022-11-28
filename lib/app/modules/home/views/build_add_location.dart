import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

class BuildAddLocation extends StatelessWidget {
  const BuildAddLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showMaterialModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          context: context,
          builder: (context) => SingleChildScrollView(
            controller: ModalScrollController.of(context),
            child: Container(
              padding: EdgeInsets.only(top: 23, left: 24),
              height: 572.h,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Use your current location",
                    size: 18.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.PIN_LOCATION);
                    },
                    child: MyText(
                      text: "Add another address",
                      size: 18.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  MyText(
                    text: "Home",
                    size: 18.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  MyText(
                    text: "Office",
                    size: 18.sp,
                    weight: ksevenWeight,
                    color: kblack,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  ExpandablePanel(
                    header: MyText(
                      text: "Browse our cities",
                      size: 18.sp,
                      weight: ksevenWeight,
                      color: kblack,
                    ),
                    collapsed: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maalot-Tarshiha',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Nahariya',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Mi’ilya',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    expanded: Text(
                      '',
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          MyText(
            text: "Add a location",
            size: 14.sp,
            weight: kfiveWeight,
            color: kgreenColor,
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: kgreenColor,
            size: 20,
          )
        ],
      ),
    );
  }
}
