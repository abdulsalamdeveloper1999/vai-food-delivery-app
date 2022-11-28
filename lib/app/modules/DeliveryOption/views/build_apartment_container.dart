import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';

class BuildApartmentContainer extends StatelessWidget {
  const BuildApartmentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      width: 323.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SvgPicture.asset('assets/icons/greenLocation.svg'),
              SizedBox(height: 7.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Save as',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: kfiveWeight,
                          color: klightgrey),
                    ),
                    TextSpan(
                      text: '\nHome',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: kfiveWeight,
                        color: kblack,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "John’s apartment",
                size: 16.sp,
                weight: ksevenWeight,
                color: kblack,
              ),
              SizedBox(height: 3.h),
              MyText(
                text: "27H8+RC Mi’ilya , bornad street,\nIsrael ",
                size: 16.sp,
                weight: kfiveWeight,
                color: klightgrey,
              ),
              SizedBox(height: 3.h),
              SvgPicture.asset(
                'assets/icons/greenChange.svg',
                height: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
