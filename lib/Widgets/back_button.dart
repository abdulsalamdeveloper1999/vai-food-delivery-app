import 'package:flutter/material.dart';
import 'package:food/Constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget backButton() {
  return GestureDetector(
    onTap: () {
      Get.back();
    },
    child: Icon(
      Icons.arrow_back,
      color: kblack,
    ),
  );
}
