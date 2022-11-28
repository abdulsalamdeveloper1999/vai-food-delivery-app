import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';
import 'package:food/Widgets/back_button.dart';
import 'package:food/Widgets/elevated_button_widget.dart';
import 'package:food/Widgets/login_field.dart';
import 'package:food/Widgets/my_text.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/create_new_password_controller.dart';

class CreateNewPasswordView extends GetView<CreateNewPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kbackground,
          elevation: 0,
          leading: backButton(),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h),
                MyText(
                  text: "Create new password",
                  size: 24.sp,
                  weight: ksevenWeight,
                  color: kblack,
                ),
                SizedBox(height: 19.h),
                MyText(
                  text:
                      "Your password must be at least 8\ncharacters , and contains at least one\nletter and one digit.",
                  size: 16.sp,
                  weight: kfourWeight,
                  color: klightgrey,
                ),
                SizedBox(height: 41.h),
                BuildForms(
                  title: 'Enter password',
                  formcontroller: controller.passController,
                ),
                BuildForms(
                  title: 'Confirm password',
                  formcontroller: controller.confirmpassController,
                ),
                SizedBox(height: 20.h,),
                InkWell(
                  onTap: () {
                    Get.offAndToNamed(Routes.CONGRATS_PASSWORD_RESET);
                  },
                  child: Container(
                    height: 48.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.sp),
                        color: klightgrey),
                    child: Center(
                      child: MyText(
                        text: "Next",
                        size: 16.sp,
                        weight: ksevenWeight,
                        color: kblack.withOpacity(0.26),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class BuildForms extends StatelessWidget {
  final title;

  TextEditingController? formcontroller = TextEditingController();
  BuildForms({
    Key? key,
    required this.formcontroller,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: "$title",
          size: 14.sp,
          weight: kfiveWeight,
          color: kblack,
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 290.w,
          child: GetBuilder<CreateNewPasswordController>(
            builder: (controller) {
              return Padding(
                padding: EdgeInsets.only(left: 5),
                child: LoginFields(
                  obSecure: controller.obsecure,
                  formcontroller: formcontroller,
                  hintText: 'Password',
                  suffixicon: IconButton(
                    onPressed: () {
                      controller.showObsecureText();
                      print(controller.obsecure);
                    },
                    icon: Icon(
                      controller.obsecure == true
                          ? Icons.remove_red_eye
                          : Icons.visibility_off_outlined,
                      size: 20,
                      color: Color(0xff737373),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
