
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/auth/select_type_controller.dart';

import 'package:intl_phone_field/intl_phone_field.dart';


import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../const/colors.dart';
import '../const/textstyle.dart';
import '../widgets/forgot_passwordBackwidget.dart';
import 'forgot_phone_auth.dart';
import 'forgot_reset.dart';


class ForgetPasswordEmailPhoneView extends StatefulWidget {
  const ForgetPasswordEmailPhoneView({super.key});
  @override
  State<ForgetPasswordEmailPhoneView> createState() =>
      _ForgetPasswordEmailPhoneViewState();
}

class _ForgetPasswordEmailPhoneViewState
    extends State<ForgetPasswordEmailPhoneView> {
  final selectedTypeController = Get.put(SelectedTypeController());
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        // resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  const ForgetPasswordBackWidget(),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 28.h,
                        ),
                        Container(
                          height: 38.h,
                          decoration: BoxDecoration(
                            color: textfieldColor,
                            borderRadius: BorderRadius.circular(9.51.r),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  selectedTypeController
                                      .changeSelectedType('email');
                                  setState(() {});
                                },
                                child: Obx(() => Container(
                                  margin: const EdgeInsets.only(left: 4.5),
                                  height: 30.43.h,
                                  width: 151.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.71.sp),
                                      color: selectedTypeController
                                          .selectedType.value ==
                                          'email'
                                          ? redColor
                                          : Colors.transparent),
                                  child: Center(
                                    child: Text(
                                      'Email',
                                    style: jost600(12.sp,   selectedTypeController
                                        .selectedType.value ==
                                        'email'
                                        ? Colors.white
                                        : greyColor),


                                    ),
                                  ),
                                )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectedTypeController
                                      .changeSelectedType('phone');
                                  setState(() {});
                                },
                                child: Obx(() => Container(
                                  margin: const EdgeInsets.only(left: 13),
                                  height: 30.43.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(9.51.r),
                                      color: selectedTypeController
                                          .selectedType.value ==
                                          'phone'
                                          ? redColor
                                          : Colors.transparent),
                                  child: Center(
                                    child: Text(
                                     'Phone',
                                    style: jost700(12.sp,   selectedTypeController
                                        .selectedType.value ==
                                        'phone'
                                        ? Colors.white
                                        :greyColor),

                                    ),
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32.96.h,
                        ),
                        Obx(
                              () => Text(

                            selectedTypeController.selectedType.value == 'email'
                                ? "Enter your email"
                                : "Enter your phone number",
                            style: jost600(24.sp, blueColor),


                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Obx(
                              () => Text(
                         selectedTypeController.selectedType.value ==
                                'email'
                                ? "Please enter a email address to request\na password reset."
                                : "Please enter a phone number to request a password reset.",
                         style: jost500(16.sp, greyColor),

                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        selectedTypeController.selectedType.value == 'email'
                            ?  Container(
                          width: double.infinity,
                          child: CustomTextField1(
                            hintText: 'Your email',
                            hintTextSize: 15.sp,
                            prefixIcon: Icons.email,
                            borderColor: Colors.cyan,
                            borderRadius: 13.sp,
                            fillColor: Colors.transparent,
                          ),
                        )
                            :
                        IntlPhoneField(
                          flagsButtonPadding: EdgeInsets.only(left: 13.w),
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          showDropdownIcon: false,
                          decoration: InputDecoration(
                            hintText: '0000000000',
                            filled: true,
                            fillColor: textfieldColor,
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            counterText: '',
                            hintStyle: TextStyle(
                              color: blueColor,
                              fontFamily: 'jost',
                              fontSize: 14.65.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.31.r),
                              borderSide: BorderSide(color: Colors.cyan),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.31.r),
                              borderSide: BorderSide(color: Colors.cyan),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.31.r),
                              borderSide: BorderSide(color: Colors.cyan),
                            ),
                          ),
                          initialCountryCode: 'AE',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        CustomButton(text: 'Send', color: redColor, onPressed: () {
                           Get.to(()=>PhoneNumberAuthenticationView());
                          },
                            // height: 51.h,
                            // title: "Send",
                            // color: primaryColor,
                            // textSize: 19.sp,
                            // onTap: () {
                            //   CustomRoute.navigateTo(
                            //       context, const PhoneNumberAuthenticationView());
                            // }
                        )
                      ],
                    ),
                  ),
                  // const Spacer(),
                  SizedBox(
                    height: 300.25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: jost400(12.sp, blueColor),

                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          //CustomRoute.navigateTo(context, const SignupView());
                        },
                        child: Text(
                        "Sign Up",
                          style: jost500(12.sp, redColor),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
