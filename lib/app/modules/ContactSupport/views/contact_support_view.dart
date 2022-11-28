import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';

import 'package:get/get.dart';

import '../controllers/contact_support_controller.dart';

class ContactSupportView extends GetView<ContactSupportController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset('assets/icons/backGrey.svg')),
                SizedBox(width: 79.w),
                MyText(
                  text: "Contact Support",
                  size: 24.sp,
                  weight: ksevenWeight,
                  color: kblack,
                )
              ],
            ),
            SizedBox(height: 108.h),
            SvgPicture.asset("assets/icons/callUs.svg"),
            SvgPicture.asset("assets/icons/emailUs.svg"),
            SvgPicture.asset("assets/icons/chaT.svg"),
            Spacer(),
            Image.asset(
              'assets/icons/contactLogo.png',
              height: 81.h,
            ),
          ],
        ),
      )),
    );
  }
}
