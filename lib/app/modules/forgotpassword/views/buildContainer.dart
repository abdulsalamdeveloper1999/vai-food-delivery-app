import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

Container buildContainer(
    {required String UpText,
    required String DownText,
    required String svgUri}) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 72.h,
    width: 307.w,
    decoration: BoxDecoration(
      color: Color(0xffF6F6F6),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      children: [
        SvgPicture.asset("$svgUri"),
        SizedBox(width: 21.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "$UpText",
              size: 14.sp,
              weight: kfiveWeight,
              color: kblack,
            ),
            MyText(
              text: "$DownText",
              size: 16.sp,
              weight: kfourWeight,
              color: klightgrey,
            )
          ],
        )
      ],
    ),
  );
}
