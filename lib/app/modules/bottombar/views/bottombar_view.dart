import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

import '../../../../Widgets/willpop.dart';
import '../../browse/views/browse_view.dart';
import '../../cart/views/cart_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  final TextStyle unselectedLabelStyle = TextStyle(
      fontFamily: 'Poppins',
      color: Color(0xff838383),
      fontWeight: FontWeight.w400,
      fontSize: 15.sp);

  final TextStyle selectedLabelStyle = TextStyle(
      color: kgreenColor, fontWeight: FontWeight.w600, fontSize: 15.sp);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(
      () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 60,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            child: BottomNavigationBar(
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: landingPageController.changeTabIndex,
              currentIndex: landingPageController.tabIndex.value,
              unselectedItemColor: Color(0xff838383),
              selectedItemColor: kgreenColor,
              unselectedLabelStyle: unselectedLabelStyle,
              selectedLabelStyle: selectedLabelStyle,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    child: SvgPicture.asset(
                      "assets/icons/home.svg",
                      color: Color(0xff838383),
                    ),
                  ),
                  label: 'Home',
                  backgroundColor: kwhiteColor,
                  activeIcon: Container(
                    child: SvgPicture.asset(
                      "assets/icons/home.svg",
                      color: kgreenColor,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      child: SvgPicture.asset("assets/icons/browse.svg"),
                    ),
                    label: 'Browse',
                    backgroundColor: kwhiteColor,
                    activeIcon: SvgPicture.asset(
                      "assets/icons/browse.svg",
                      color: kgreenColor,
                    )),
                BottomNavigationBarItem(
                    icon: Container(
                      child: SvgPicture.asset("assets/icons/cart.svg"),
                    ),
                    label: 'Cart',
                    backgroundColor: kwhiteColor,
                    activeIcon: SvgPicture.asset(
                      "assets/icons/cart.svg",
                      color: kgreenColor,
                    )
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    child: SvgPicture.asset("assets/icons/profile.svg"),
                  ),
                  label: 'Profile',
                  backgroundColor: kwhiteColor,
                  activeIcon: SvgPicture.asset(
                    "assets/icons/profile.svg",
                    color: kgreenColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final BottombarController landingPageController =
        Get.put(BottombarController(), permanent: false);
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return onBackButtonPressed(context);
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar:
              buildBottomNavigationMenu(context, landingPageController),
          body: Obx(
            () => IndexedStack(
              index: landingPageController.tabIndex.value,
              children: [HomeView(), BrowseView(), CartView(), ProfileView()],
            ),
          ),
        ),
      ),
    );
  }
}
