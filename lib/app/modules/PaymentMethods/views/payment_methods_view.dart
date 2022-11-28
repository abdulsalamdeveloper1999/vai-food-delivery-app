import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/my_text.dart';
import 'package:food/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/payment_methods_controller.dart';

List<String> _cards = [
  "assets/icons/visaCard.svg",
  "assets/icons/applePay.svg",
  'assets/icons/masterCard.svg',
];

class PaymentMethodsView extends GetView<PaymentMethodsController> {
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhiteColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: kblack,
            ),
          ),
          elevation: 0,
          backgroundColor: kwhiteColor,
          title: MyText(
            text: 'Payment Methods',
            size: 21.sp,
            weight: ksevenWeight,
            color: kblack,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              MyText(
                text: 'Select your preferred payment method:',
                size: 14.sp,
                weight: kfiveWeight,
                color: klightgrey,
              ),
              SizedBox(
                height: 50.h,
              ),
              ...List.generate(
                _cards.length,
                (index) => GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.MASTER_CARD_DETAILS);
                    },
                    child: SvgPicture.asset("${_cards[index]}")),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.MASTER_CARD_DETAILS);
                },
                child: Image.asset(
                  "assets/icons/payMethod.png",
                  height: 100.h,
                ),
              ),
            ],
          ),
        ));
  }
}
