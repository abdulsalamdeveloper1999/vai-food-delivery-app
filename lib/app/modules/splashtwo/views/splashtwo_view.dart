import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splashtwo_controller.dart';

class SplashtwoView extends GetView<SplashtwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        "assets/icons/splashtwo.png",
        height: 126.h,
        width: 284.w,
      )),
    );
  }
}
