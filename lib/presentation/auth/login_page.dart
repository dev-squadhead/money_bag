import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/constant.dart';
import 'package:money_bag/presentation/auth/account/account_auth/account_auth_page.dart';
import 'package:money_bag/presentation/auth/signup_page.dart';
import 'package:money_bag/presentation/widgets/custom_button.dart';
import 'package:money_bag/presentation/widgets/custom_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPge extends HookConsumerWidget {
  const LoginPge({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final rememberMe = useState(false);
    return Scaffold(
      //backgroundColor: Colors.orange,
      backgroundColor: Color(0xFF1D2129),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Money Bag',
                    style: TextStyle(color: Colors.amber, fontSize: 20.sp),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset(
              //       '',
              //       width: 35.w,
              //     ),
              //   ],
              // ),
              SizedBox(height: 7.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login to your\nMoney Bag',
                    style: TextStyle(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 28.w,
                        height: .75.h,
                        decoration: const BoxDecoration(color: greenTypeColor),
                      ),
                      Container(
                        width: 7.w,
                        height: .75.h,
                        decoration:
                            const BoxDecoration(color: Color(0XFF243B10)),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 8.h),
              CustomTextfield(
                controller: emailController,
                labelText: 'Email / Phone',
                hintText: 'Enter your email or phone number',
              ),
              SizedBox(height: 3.h),
              CustomTextfield(
                controller: passwordController,
                labelText: 'Password',
                hintText: 'Enter your password',
                hidePassword: true,
              ),
              Row(
                children: [
                  IconButton(
                    icon: rememberMe.value
                        ? Icon(
                            Icons.check_box,
                            size: 18.sp,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.check_box_outline_blank,
                            size: 18.sp,
                            color: Colors.white,
                          ),
                    onPressed: () {
                      rememberMe.value = !rememberMe.value;
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color(0XFF494E52),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: greenTypeColor,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 4.h),
              CustomEButton(
                text: 'Login',
                // height: 5.h,
                // width: 60.w,
                onTap: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or continue with',
                    style:
                        TextStyle(color: whiteShadowTypeColor, fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const AccountAuthPage()));
                    },
                    icon: Image.asset('assets/logos/google.png'),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const AccountAuthPage()));
                    },
                    icon: Image.asset('assets/logos/facebook.png'),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const AccountAuthPage()));
                    },
                    icon: Image.asset('assets/logos/twitter.png'),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xffB7B7B7)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignupPage()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xffEFAB41)),
                    ),
                  ),
                  Text(
                    "now!",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xffB7B7B7)),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      )),
    );
  }
}
