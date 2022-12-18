import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/presentation/app/successful_add_balance_page.dart';
import 'package:money_bag/presentation/widgets/custom_button.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class AddBalancePage extends HookConsumerWidget {
  const AddBalancePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final List<int> list = [];
    final ValueNotifier<List> nList = useState([]);
    final item = useState(IList<int>([1, 2]));
    final list = useState(IList<int>([]));
    //final nList = useState(list);
    return Scaffold(
      backgroundColor: const Color(0xFF1D2129),
      body: SafeArea(
          child: SingleChildScrollView(
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
                    'Add Balance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //'5000.00',
                    "${item.value}",
                    style: TextStyle(
                        fontSize: 27.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BDT',
                    style: TextStyle(
                        color: const Color(0xFFCDCDCD),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                decoration: BoxDecoration(
                    color: const Color(0xff323235),
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Row(
                  children: [
                    Container(
                      height: 7.h,
                      width: 7.5.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff282828),
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: const Image(
                          image: AssetImage('assets/logos/facebook.png')),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Column(
                      children: [
                        Text(
                          'Wallet Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: .6.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: .7.h,
                              width: 20.w,
                              decoration: const BoxDecoration(
                                color: Color(0xff50EC91),
                                //borderRadius: BorderRadius.circular(25.sp)
                              ),
                            ),
                            Container(
                              height: .7.h,
                              width: 11.w,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                //borderRadius: BorderRadius.circular(25.sp)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.5.h),
              Text(
                "Create Wallet",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xff4A4F53),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      nList.value.add(1);
                      list.value.add(1);
                      item.value.add(5);
                      print(nList);
                      print('Ilist: $nList');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.w, vertical: 1.2.h),
                      decoration: BoxDecoration(
                        color: const Color(0xff323235),
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: const Color(0xff999999),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      nList.value.add(2);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.w, vertical: 1.2.h),
                      decoration: BoxDecoration(
                        color: const Color(0xff323235),
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: const Color(0xff999999),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '6',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '7',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '8',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.2.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff323235),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Text(
                      '9',
                      style: TextStyle(
                          color: const Color(0xff999999),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 5.3.w),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 1.2.h),
                          decoration: BoxDecoration(
                            color: const Color(0xff323235),
                            borderRadius: BorderRadius.circular(12.sp),
                          ),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: const Color(0xff999999),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 7.h,
                        ),
                        Icon(
                          Icons.cancel_presentation,
                          size: 11.w,
                          color: const Color(0xffCDCDCD),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomEButton(
                text: 'Add Balance',
                height: 7.h,
                // width: 60.w,
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SuccessfulAddBalancePage()));
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
