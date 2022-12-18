import 'package:flutter/material.dart';
import 'package:money_bag/constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OptionTile extends StatelessWidget {
  final Widget child;
  const OptionTile({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      alignment: Alignment.center,
      width: double.infinity,
      // height: 7.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: whiteShadowTypeColor,
        ),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: child,
    );
  }
}
