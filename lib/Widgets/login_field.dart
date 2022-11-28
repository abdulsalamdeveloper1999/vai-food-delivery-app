// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:food/Constants/borders.dart';
import 'package:food/Constants/colors.dart';
import 'package:food/Constants/textstyles.dart';

class LoginFields extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  var hintText, suffixicon;
  bool? obSecure;
  TextEditingController? formcontroller = TextEditingController();
  ValueChanged<String>? onChanged;
  var fieldValidator;
  var onSavedState;
  var fillColor;

  LoginFields(
      {Key? key,
      this.fillColor = kbackground,
      this.hintText,
      this.onChanged,
      this.formcontroller,
      this.obSecure = false,
      this.suffixicon,
      this.fieldValidator,
      this.onSavedState})
      : super(key: key);

  @override
  _LoginFieldsState createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: TextFormField(
          style: ktextStyle(),
          obscureText: widget.obSecure!,
          controller: widget.formcontroller,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            hintText: '${widget.hintText}',
            suffixIcon: widget.suffixicon,
            // labelText: '${widget.hintText}',
            // labelStyle: khintStyle(),
            hintStyle: khintStyle(),
            contentPadding: contentPadding,
            border: enableborder,
            enabledBorder: enableborder,
            focusedBorder: focusedborder,
            // enabledBorder: InputStyling.inputEnableBorder,
            // focusedBorder: InputStyling.inputFocusBorder,
            fillColor: widget.fillColor,
            filled: true,
          ),
          validator: widget.fieldValidator,
        ),
      ),
    );
  }
}
