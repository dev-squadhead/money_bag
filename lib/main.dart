import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/presentation/app/add_balance_page.dart';
import 'package:money_bag/presentation/app/dashboard/dashboard_page.dart';
import 'package:money_bag/presentation/app/transfer_balance_page.dart';
import 'package:money_bag/presentation/app/wallet_page.dart';
import 'package:money_bag/presentation/auth/account/account_auth/account_auth_page.dart';
import 'package:money_bag/presentation/auth/login_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Money Bag',
          theme: ThemeData(
              //primarySwatch: Colors.blue,
              ),
          home: const AddBalancePage());
    });
  }
}
