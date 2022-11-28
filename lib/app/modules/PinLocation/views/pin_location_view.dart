import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/modules/PinLocation/views/panel_widget.dart';

import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../controllers/pin_location_controller.dart';

List<String> address = ['Home', 'Work', 'Other'];
BorderRadiusGeometry radius = BorderRadius.only(
  topLeft: Radius.circular(24.0),
  topRight: Radius.circular(24.0),
);

class PinLocationView extends GetView<PinLocationController> {
  late final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SlidingUpPanel(
          parallaxEnabled: true,
          parallaxOffset: 1.0,
          maxHeight: 380.h,
          minHeight: 230.h,
          borderRadius: BorderRadius.circular(30),
          panelBuilder: (controller) => PanelWidget(
                scrollController: controller,
              ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icons/pinMap.jpg'),
                  ),
                ),
              ),
              Positioned(
                top: 299,
                left: 323,
                right: 7,
                bottom: 58,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/search.svg'),
                    SvgPicture.asset('assets/icons/centermap.svg'),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 46.0, left: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_sharp, color: kblack),
                        MyText(
                          text: "Pin Location",
                          size: 21.sp,
                          weight: ksevenWeight,
                          color: kblack,
                        ),
                        Icon(Icons.arrow_back_sharp, color: Colors.transparent),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    ));
  }
}
