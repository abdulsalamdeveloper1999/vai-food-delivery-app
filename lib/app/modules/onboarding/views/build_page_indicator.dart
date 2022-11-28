import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../Constants/colors.dart';
import '../controllers/onboarding_controller.dart';

class BuildPageIndicator extends StatelessWidget {
  var isActive;
  BuildPageIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(right: 3),
          height: 6.h,
          width: isActive ? 12.w : 6.w,
          decoration: BoxDecoration(
              color: isActive ? kgreenColor : klightgrey,
              borderRadius: BorderRadius.circular(8)),
        );
      },
    );
  }
}
