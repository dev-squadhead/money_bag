import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/presentation/app/add_balance_page.dart';
import 'package:money_bag/presentation/widgets/custom_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Balance extends HookConsumerWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Your Total Balance (BDT)',
              style: TextStyle(color: Color(0xFFCDCDCD)),
            ),
          ],
        ),
        SizedBox(
          height: .5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '5000.00',
              style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 3.5.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddBalancePage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.5.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFF47B66A),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                        size: 6.h,
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Add',
                      style: TextStyle(
                          color: const Color(0xFFCDCDCD),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(
                          color: const Color(0xFFCDCDCD),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(2.5.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE87F23),
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.vertical_align_bottom,
                      color: Colors.white,
                      size: 6.h,
                    ),
                  ),
                  SizedBox(
                    height: 1.2.h,
                  ),
                  Text(
                    'Spend',
                    style: TextStyle(
                        color: const Color(0xFFCDCDCD),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                  Text(
                    'Balance',
                    style: TextStyle(
                        color: const Color(0xFFCDCDCD),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  settingModalBottomSheet(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.5.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFFBF4838),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: Icon(
                        Icons.vertical_align_top,
                        color: Colors.white,
                        size: 6.h,
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'Add',
                      style: TextStyle(
                          color: const Color(0xFFCDCDCD),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: const Color(0xFFCDCDCD),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(2.5.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2B919F),
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 6.h,
                    ),
                  ),
                  SizedBox(
                    height: 1.2.h,
                  ),
                  Text(
                    'View',
                    style: TextStyle(
                        color: const Color(0xFFCDCDCD),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'History',
                    style: TextStyle(
                        color: const Color(0xFFCDCDCD),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Container(
          padding:
              EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h, bottom: 3.h),
          color: const Color(0xff323235),
          child: (Column(
            children: [
              Text(
                "Add Wallet",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Wallet Name",
                    style: TextStyle(
                      fontSize: 15.2.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Wallet Name",
                  labelStyle: TextStyle(
                      fontSize: 17.2.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: const Color(0xFF434343),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet Icon",
                        style: TextStyle(
                          fontSize: 15.2.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1.5.h),
                      Container(
                        height: 6.5.h,
                        width: 42.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff434343),
                            borderRadius: BorderRadius.circular(8.sp)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Initial Balance",
                        style: TextStyle(
                          fontSize: 15.2.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1.5.h),
                      Container(
                        height: 6.5.h,
                        width: 42.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff434343),
                            borderRadius: BorderRadius.circular(8.sp)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 9.h,
              ),
              CustomEButton(
                height: 7.h,
                text: "Add Wallet",
                onTap: () {},
              ),
            ],
          )),
        );
      });
}
