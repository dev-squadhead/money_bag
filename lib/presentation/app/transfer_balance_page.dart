import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/presentation/app/successful_add_balance_page.dart';
import 'package:money_bag/presentation/widgets/custom_button.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class TransferBalancePage extends HookConsumerWidget {
  const TransferBalancePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<String> amountSign = ["f", "Female", "Other"];

    return Scaffold(
      backgroundColor: const Color(0xFF1D2129),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.2.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 6.w,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2.5.w,
                ),
                Text(
                  'Transfer Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Amount',
              style: TextStyle(
                  color: const Color(0xFF999999),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 73.6.w,
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.2.sp,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff999999)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff999999)))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 1.w, right: 1.w, top: 1.w),
                  decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(10.sp)),
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 8.w,
                    color: const Color(0xff999999),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select:',
                  style: TextStyle(
                      color: const Color(0xFFCDCDCD),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: .4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xffE87F23),
                    borderRadius: BorderRadius.circular(25.sp),
                  ),
                  child: Text(
                    '\$50',
                    style: TextStyle(fontSize: 15.2.sp, color: Colors.white),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: .4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xff323235),
                    borderRadius: BorderRadius.circular(25.sp),
                  ),
                  child: Text(
                    '\$100',
                    style: TextStyle(
                        fontSize: 15.2.sp, color: const Color(0xff999999)),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: .4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xff323235),
                    borderRadius: BorderRadius.circular(25.sp),
                  ),
                  child: Text(
                    '\$200',
                    style: TextStyle(
                        fontSize: 15.2.sp, color: const Color(0xff999999)),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: .4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xff323235),
                    borderRadius: BorderRadius.circular(25.sp),
                  ),
                  child: Text(
                    '\$500',
                    style: TextStyle(
                        fontSize: 15.2.sp, color: const Color(0xff999999)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Amount',
              style: TextStyle(
                  color: const Color(0xFF999999),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.2.sp,
              ),
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff999999)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff999999)))),
            ),
            const Spacer(),
            CustomEButton(
              text: 'Transfer Balance',
              height: 7.h,
              // width: 60.w,
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SuccessfulAddBalancePage()));
              },
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      )),
    );
  }
}
