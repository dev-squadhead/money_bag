import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/constant.dart';
import 'package:money_bag/presentation/app/add_balance_page.dart';
import 'package:money_bag/presentation/app/dashboard/widgets/balance.dart';
import 'package:money_bag/presentation/app/dashboard/widgets/last_transaction.dart';
import 'package:money_bag/presentation/app/dashboard/widgets/wallets.dart';
import 'package:money_bag/presentation/app/wallet_page.dart';
import 'package:money_bag/presentation/widgets/custom_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HoomPage extends HookConsumerWidget {
  const HoomPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pages = [
      const WalletPage(),
      const AddBalancePage(),
      const WalletPage(),
      const WalletPage(),
    ];
    final currentIndex = useState(0);

    return Scaffold(
      backgroundColor: backgroundColor,
      // body: pages[currentIndex.value],

      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: const NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnUg_S8jc9xjw-UYRvEBtPdjO1Ytj75rcajbn-FY7z&s"),
                        radius: 6.w,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "Sarah Azmi",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications_on_outlined,
                    color: Colors.white,
                    size: 8.w,
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              const Balance(),
              SizedBox(height: 5.h),
              const Wallets(),
              SizedBox(
                height: 4.h,
              ),
              const LastTransaction(),
              SizedBox(
                height: 4.h,
              ),
            ],
          ),
        ),
      )),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedLabelStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0XFFF99746),
        backgroundColor: const Color(0XFF242E36),
        unselectedItemColor: const Color(0xFFACACAC),
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallets"),
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined), label: "Dashboard"),
        ],
        onTap: (index) {
          //currentIndex.value = index;
        },
      ),
    );
  }
}
