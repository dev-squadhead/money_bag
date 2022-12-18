import 'package:flutter/material.dart';
import 'package:money_bag/constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool hidePassword;
  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.hidePassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.white, fontSize: 18.sp),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: whiteShadowTypeColor)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: whiteShadowTypeColor)),
          fillColor: backgroundColor,
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF5F6B7E))),
      obscureText: hidePassword,
    );
  }
}
