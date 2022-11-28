import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/splashone_controller.dart';

class SplashoneView extends GetView<SplashoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/icons/splashone.png",
          height: 200.h,
          width: 200.w,
        ),
      ),
    );
  }
}
