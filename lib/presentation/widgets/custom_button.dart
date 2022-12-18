import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomEButton extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Function() onTap;
  const CustomEButton(
      {super.key,
      required this.text,
      this.height,
      this.width,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 6.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffE87F23),
            foregroundColor: Theme.of(context).colorScheme.onSurface,
            shape: const StadiumBorder()),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
