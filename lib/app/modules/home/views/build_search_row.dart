import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Constants/colors.dart';
import '../../../../Constants/textstyles.dart';

class BuildSearchRow extends StatelessWidget {
  const BuildSearchRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 12),
          width: 247.w,
          decoration: BoxDecoration(
            color: kwhiteColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextFormField(
            readOnly: true,
            style: ktextStyle(),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: klightgrey,
              ),
              hintText: 'Search',
              hintStyle: khintStyle(),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            onTap: () async {
              // showMaterialModalBottomSheet(
              //     context: (context),
              //     builder: (BuildContext context) {
              //       return Container();
              //     });
            },
          ),
        ),
        InkWell(
            onTap: () {
              Get.toNamed(Routes.FILTER);
            },
            child: SvgPicture.asset('assets/icons/filter.svg')),
      ],
    );
  }
}
