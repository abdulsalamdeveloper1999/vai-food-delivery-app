import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../Constants/colors.dart';
import '../../home/controllers/home_controller.dart';

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];

GetBuilder<HomeController> buildDropDown() {
  return GetBuilder<HomeController>(builder: (controller) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        icon: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: kgreenColor,
          size: 20,
        ),
        hint: Text(
          'City Center Hotel Jerusalem',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: kgreenColor,
          ),
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: kgreenColor,
                    ),
                  ),
                ))
            .toList(),
        value: controller.selectedValue,
        onChanged: (value) {
          controller.changeDropDown(value);
        },
        buttonHeight: 40,
        itemHeight: 40,
      ),
    );
  });
}
