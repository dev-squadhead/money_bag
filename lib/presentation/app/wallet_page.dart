import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class WalletPage extends HookConsumerWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2129),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
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
                      'Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  padding: EdgeInsets.only(top: .8.h, bottom: 2.4.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff323235),
                    borderRadius: BorderRadius.circular(5.sp),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Outdoor Activity',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: .7.h,
                      ),
                      Text(
                        '50,000.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'BDT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.5.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 8.5.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCDCDCD)),
                      borderRadius: BorderRadius.circular(15.sp)),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  height: 8.5.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffE87F23)),
                      borderRadius: BorderRadius.circular(15.sp)),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  height: 8.5.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffCDCDCD)),
                      borderRadius: BorderRadius.circular(15.sp)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 6.5.h,
                                width: 7.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xff242E35),
                                    borderRadius: BorderRadius.circular(13.sp)),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/logos/facebook.png')),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wallets Name',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  Text(
                                    '25 June, 2022',
                                    style: TextStyle(
                                        color: const Color(0xffCDCDCD),
                                        fontSize: 14.2.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '-5000 BDT',
                            style: TextStyle(
                                color: const Color(0xffE87F23),
                                fontSize: 15.2.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
        ],
      )),
    );
  }
}
