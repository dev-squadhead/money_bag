import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Last Transaction',
              style: TextStyle(
                  color: const Color(0xFFCDCDCD),
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp),
            ),
          ],
        ),
        SizedBox(height: 1.5.h),
        Row(
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
                      image: AssetImage('assets/logos/facebook.png')),
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
                          fontSize: 17.sp),
                    ),
                    const Text(
                      '25 June, 2022',
                      style: TextStyle(
                        color: Color(0xffCDCDCD),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              '-5000 BDT',
              style: TextStyle(
                  color: Color(0xffE87F23), fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 1.5.h,
        ),
        Row(
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
                      image: AssetImage('assets/logos/facebook.png')),
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
                          fontSize: 17.sp),
                    ),
                    const Text(
                      '25 June, 2022',
                      style: TextStyle(
                        color: Color(0xffCDCDCD),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              '+5000 BDT',
              style: TextStyle(
                  color: Color(0xff50EC91), fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
