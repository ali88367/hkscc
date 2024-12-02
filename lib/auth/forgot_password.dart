import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/auth/select_type_controller.dart';

import '../const/colors.dart';
import '../const/textstyle.dart';
import '../widgets/forgot_passwordBackwidget.dart';
import 'forgot_phone_number.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final selectedTypeController = Get.put(SelectedTypeController());
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  int tappedContainerIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          const ForgetPasswordBackWidget(),
          SizedBox(height: 25.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 "Forgot password?",
                  style: jost600(24.sp, blueColor),

                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                "Please choose a method to request a \npassword reset.",
style: jost500(16.sp, greyColor),
                ),
                SizedBox(
                  height: 25.h,
                ),
                GestureDetector(
                  onTap: () {
               Get.to(()=>ForgetPasswordEmailPhoneView());

                    setState(() {
                      tappedContainerIndex = 1;
                      selectedTypeController.changeSelectedType('email');
                    });
                  },
                  child: Container(
                    height: 73.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: tappedContainerIndex == 1
                                ? Colors.transparent
                                : Color.fromRGBO(205, 211, 214, 1)

                        ),
                        color: tappedContainerIndex == 1
                            ?   textfieldColor

                            : textfieldColor,

                        //Color(0xffF9FAFB),

                        borderRadius: BorderRadius.circular(11.38.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.7.w),
                          child: Row(
                            children: [
                              Container(
                                  height: 38.h,
                                  width: 38.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Image.asset('assets/images/mail.png',

                                      scale: 2.2)),
                              SizedBox(
                                width: 15.7.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                  "Your email",
                                    style: jost600(13.sp, blueColor),

                                  ),
                                  Text(
                                  "Enter your email",
                                    style: jost400(11.sp, greyColor),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 17,
                                color: Color(0xff6B7280),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 11.38.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>ForgetPasswordEmailPhoneView());
                    setState(() {
                      tappedContainerIndex = 2;
                      selectedTypeController.changeSelectedType('phone');
                    });
                  },
                  child: Container(
                    height: 73.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: tappedContainerIndex == 2
                                ? textfieldColor
                                : Color.fromRGBO(205, 211, 214, 1)

                        ),
                        color: tappedContainerIndex == 2
                            ?   Color.fromRGBO(180, 196, 209, 1)

                            : textfieldColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.7.w),
                          child: Row(
                            children: [
                              Container(
                                  height: 30.h,
                                  width: 38.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Image.asset(
                                  'assets/images/phone.png',

                                    scale: 2.6,
                                  )),
                              SizedBox(
                                width: 15.17.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone number",
                                    style: jost600(13.sp, blueColor),

                                  ),
                                  Text(
                                   "Enter your phone number",
                                    style: jost400(11.sp, greyColor),

                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 17,
                                color: Color(0xff6B7280),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 "Don't have an account?",

                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Sign Up",

                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      )),
    );
  }
}
