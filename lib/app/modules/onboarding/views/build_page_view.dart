import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';
import '../../../../Widgets/my_text.dart';

class BuildPageView extends StatelessWidget {
  const BuildPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/icons/onboardImage.png",
          height: 131.h,
          width: 297.w,
        ),
        SizedBox(
          height: 68.h,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Delivery at your ',
                style: TextStyle(color: kblackdark, fontWeight: ksevenWeight),
              ),
              TextSpan(
                text: 'doorstep',
                style: TextStyle(color: kgreenColor, fontWeight: ksevenWeight),
              ),
            ],
          ),
        ),
        SizedBox(height: 14.h),
        MyText(
          align: TextAlign.center,
          text:
              "Your order will be delivered as soon\nas possible by our courier.",
          color: kblack.withOpacity(0.48),
        ),
      ],
    );
  }
}
