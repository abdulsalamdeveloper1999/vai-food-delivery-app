import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';
import '../controllers/restaurant_detail_controller.dart';

class BuildCLickRow extends StatelessWidget {
  final text;
  const BuildCLickRow({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<RestaurantDetailController>(builder: (controller) {
            return RoundCheckBox(
              checkedColor: Colors.transparent,
              border: Border.all(color: Colors.transparent),
              uncheckedWidget: Icon(
                Icons.circle_outlined,
                color: klightgrey,
              ),
              checkedWidget: Icon(
                Icons.check_circle,
                color: kgreenColor,
              ),
              onTap: (selected) {},
            );
          }),
          SizedBox(width: 8.w),
          MyText(
            text: "$text",
            size: 16.sp,
            weight: kfourWeight,
            color: kblack,
          )
        ],
      ),
    );
  }
}
