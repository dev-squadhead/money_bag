import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/presentation/app/add_balance_page.dart';
import 'package:money_bag/presentation/widgets/custom_button.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SuccessfulAddBalancePage extends HookConsumerWidget {
  const SuccessfulAddBalancePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2129),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 7.w, right: 7.w, bottom: 4.h, top: 8.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff323235),
                    borderRadius: BorderRadius.circular(25.sp),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Balance Successfully Added',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.2.sp,
                        ),
                      ),
                      SizedBox(
                        height: .8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your Current Balance',
                            style: TextStyle(
                              color: const Color(0xff8C8C8C),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                          Text(
                            ' 50,000 BDT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffb7b7b7), width: .8.w),
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Text(
                          ' 50000.00 BDT',
                          style: TextStyle(
                            color: const Color(0xFFE87F23),
                            fontWeight: FontWeight.bold,
                            fontSize: 25.5.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Wallet',
                            style: TextStyle(
                              color: const Color(0xffCDCDCD),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                          Text(
                            'Outdoor Activity',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
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
                            'Your Current Balance',
                            style: TextStyle(
                              color: const Color(0xffCDCDCD),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                          Text(
                            '50,000 BDT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: const Color(0xffCDCDCD),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                          Text(
                            '10 Nov, 2022',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.2.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -5.h,
                  left: 33.w,
                  child: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: const BoxDecoration(
                      color: Color(0xff1EC98E),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 17.w,
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20.h,
            // ),
            const Spacer(),
            CustomEButton(
              text: 'Back To Home',
              height: 7.h,
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AddBalancePage()));
              },
            ),
            SizedBox(
              height: 4.h,
            )
          ],
        ),
      )),
    );
  }
}
