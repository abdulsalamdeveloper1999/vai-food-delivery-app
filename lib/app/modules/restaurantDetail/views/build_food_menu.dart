import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/app/modules/restaurantDetail/controllers/restaurant_detail_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import 'build_bottom_sheet_content.dart';

List<String> _images = ['assets/icons/burger.png', 'assets/icons/beef.png'];

List<String> _names = ['German hamburger', 'Black Pepper Beef'];

List<String> _price = ['\$19.99', '\$27.12'];

RestaurantDetailController controller = Get.put(RestaurantDetailController());
bool click = false;

class BuildFoodMenu extends StatelessWidget {
  const BuildFoodMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 223.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(
            _price.length,
            (index) => Padding(
              padding: EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () {
                  showMaterialModalBottomSheet(
                    enableDrag: true,
                    bounce: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    context: (context),
                    builder: (BuildContext context) => StatefulBuilder(
                      builder: (BuildContext context,
                          void Function(void Function()) myState) {
                        return SingleChildScrollView(
                          controller: ModalScrollController.of(context),
                          child: BuildBottomSheetContent(),
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  height: 223.h,
                  width: 172.w,
                  decoration: BoxDecoration(
                    color: kwhiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 13, horizontal: 15
                        ),
                        height: 137.h,
                        width: 153.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('${_images[index]}'),
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      MyText(
                        text: "${_names[index]}",
                        size: 13.sp,
                        weight: kfiveWeight,
                        color: kblack,
                      ),
                      SizedBox(height: 8.h),
                      MyText(
                        text: "${_price[index]}",
                        size: 13.sp,
                        weight: kfiveWeight,
                        color: kgreenColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
