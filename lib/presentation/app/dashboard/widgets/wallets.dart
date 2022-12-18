import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:getwidget/getwidget.dart';

class Wallets extends HookConsumerWidget {
  const Wallets({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Wallets',
              style: TextStyle(
                  color: const Color(0xFFCDCDCD),
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp),
            ),
          ],
        ),
        SizedBox(height: 1.5.h),
        Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 19.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff323238),
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    Positioned(
                      top: 1.2.h,
                      right: 2.w,
                      child: Container(
                        height: 6.5.h,
                        width: 6.5.h,
                        //padding: EdgeInsets.all(3.w),
                        decoration: const BoxDecoration(
                          color: Color(0xff222221),
                          shape: BoxShape.circle,
                        ),
                        child: const Image(
                            image: AssetImage('assets/logos/facebook.png')),
                      ),
                    ),
                    Positioned(
                      bottom: 2.2.h,
                      left: 3.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wallets Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          ),
                          SizedBox(
                            height: .6.h,
                          ),
                          Text(
                            '5000 BDT',
                            style: TextStyle(
                                color: const Color(0xFFCDCDCD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          ),
                          SizedBox(
                            height: .6.h,
                          ),
                          GFProgressBar(
                            width: 31.w,
                            percentage: 0.7,
                            lineHeight: 1.2.w,
                            alignment: MainAxisAlignment.spaceBetween,
                            backgroundColor: Colors.white,
                            progressBarColor: Color(0xff50EC91),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Stack(
                  children: [
                    Container(
                      height: 19.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff323238),
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    Positioned(
                      top: 1.2.h,
                      right: 2.w,
                      child: Container(
                        height: 6.5.h,
                        width: 6.5.h,
                        decoration: const BoxDecoration(
                          color: Color(0xff222221),
                          shape: BoxShape.circle,
                        ),
                        child: const Image(
                            image: AssetImage('assets/logos/facebook.png')),
                      ),
                    ),
                    Positioned(
                      bottom: 2.2.h,
                      left: 3.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wallets Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          ),
                          SizedBox(
                            height: .6.h,
                          ),
                          Text(
                            '1000 BDT',
                            style: TextStyle(
                                color: const Color(0xFFCDCDCD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          ),
                          SizedBox(
                            height: .6.h,
                          ),
                          GFProgressBar(
                            width: 31.w,
                            percentage: 0.3,
                            lineHeight: 1.2.w,
                            alignment: MainAxisAlignment.spaceBetween,
                            backgroundColor: Colors.white,
                            progressBarColor: const Color(0xffE87F23),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Stack(
                  children: [
                    Container(
                      height: 19.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff323238),
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    Positioned(
                      top: 1.2.h,
                      right: 2.w,
                      child: Container(
                        height: 6.5.h,
                        width: 6.5.h,
                        //padding: EdgeInsets.all(3.w),
                        decoration: const BoxDecoration(
                          color: Color(0xff222221),
                          shape: BoxShape.circle,
                        ),
                        child: const Image(
                            image: AssetImage('assets/logos/facebook.png')),
                      ),
                    ),
                    Positioned(
                      bottom: 2.2.h,
                      left: 3.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wallets Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          ),
                          SizedBox(
                            height: .6.h,
                          ),
                          Text(
                            '5000 BDT',
                            style: TextStyle(
                                color: const Color(0xFFCDCDCD),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          ),
                          SizedBox(
                            height: .6.h,
                          ),
                          GFProgressBar(
                            width: 31.w,
                            percentage: 0.7,
                            lineHeight: 1.2.w,
                            alignment: MainAxisAlignment.spaceBetween,
                            backgroundColor: Colors.white,
                            progressBarColor: const Color(0xff50EC91),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
