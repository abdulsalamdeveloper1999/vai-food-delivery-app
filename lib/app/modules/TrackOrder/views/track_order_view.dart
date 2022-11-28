import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/track_order_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'map.dart';

BorderRadiusGeometry radius = BorderRadius.only(
  topLeft: Radius.circular(24.0),
  topRight: Radius.circular(24.0),
);

class TrackOrderView extends GetView<TrackOrderController> {
  late final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SlidingUpPanel(
          maxHeight: Get.height,
          minHeight: 380.h,
          borderRadius: BorderRadius.circular(30),
          panelBuilder: (controller) => MapLocation(
                scrollController: controller,
              ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icons/tc.png'),
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 323,
                right: 7,
                bottom: 58,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/centermap.svg'),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(top: 46.0, left: 28),
                        child: SvgPicture.asset("assets/icons/backGrey.svg")),
                  )
                ],
              ),
            ],
          )),
    ));
  }
}
