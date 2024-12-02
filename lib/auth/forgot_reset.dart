import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../const/images.dart';
import '../../widgets/custom_button.dart';

import '../const/colors.dart';
import '../const/textstyle.dart';
import '../widgets/forgot_passwordBackwidget.dart';
import 'auth_controller.dart';
import 'forgot_phone_auth.dart';
import 'login.dart';


class ResetPasswordView extends StatefulWidget {
  final String? email;
  final String password;

  const ResetPasswordView({super.key, required this.email, required this.password});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final AuthController _authController = Get.put(AuthController());
  bool isChecked = true;
  bool isChecked1 = true;

  final RegExp numberOrSymbolRegExp = RegExp(r'[0-9!@#\$&*~]');
  final RegExp lowerCaseRegExp = RegExp(r'[a-z]');
  final RegExp upperCaseRegExp = RegExp(r'[A-Z]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Close the keyboard when tapping outside
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                const ForgetPasswordBackWidget(),
                SizedBox(height: 37.82.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       "Reset Password",
                        style: jost700(26.sp, blueColor),
                      ),
                      SizedBox(height: 74.18.h),
                      Text(
                       "New Password",
                        style: jost500(19.sp, blueColor),

                      ),
                      SizedBox(height: 10.h),
                      Form(
                        child: SizedBox(
                          height: 43.75.h,
                          child: EmailCustomTextFiled(
                            readOnly: false,
                            controller: _authController.newPasswordController.value,
                            hintText: '***',
                            hintColor: blueColor,
                            hintTextSize: 11.sp,
                            onChange: (v) {
                              _authController.update();
                              _authController.refresh();
                              return null;
                            },
                            prefixIcon: passwordIcon,
                            isBorder: true,
                            isPassword: true,
                            isObscure: isChecked,
                            obscuringCharacter: '*',
                            passwordFunction: () {
                              setState(() {
                                isChecked = !isChecked;
                              });
                              return null;
                            },
                            borderRadius: 13.sp,
                            fillColor:Colors.transparent,
                            beforePasswordIcon: Icons.visibility_off_outlined,
                            afterPasswordIcon: Icons.visibility,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.25.h),
                      GetBuilder<AuthController>(builder: (_authController) {
                        bool containsNumberOrSymbol =
                        numberOrSymbolRegExp.hasMatch(
                            _authController.newPasswordController.value.text);
                        bool containsLowerCase = lowerCaseRegExp.hasMatch(
                            _authController.newPasswordController.value.text);
                        bool containsUpperCase = upperCaseRegExp.hasMatch(
                            _authController.newPasswordController.value.text);
                        bool containsBoth =
                            containsLowerCase && containsUpperCase;
                        double checks = (containsNumberOrSymbol ? 0.5 : 0) +
                            (containsLowerCase ? 0.5 : 0) +
                            (containsUpperCase ? 0.5 : 0) +
                            (_authController.newPasswordController.value.length >= 8
                                ? 2
                                : 0);

                        double password_strength = (checks / 4);
                        return LinearProgressIndicator(
                          value: password_strength,
                          backgroundColor: Colors.grey[300],
                          minHeight: 5,
                          color: password_strength <= 1 / 4
                              ? Colors.red
                              : password_strength == 2 / 4
                              ? Colors.yellow
                              : password_strength == 3 / 4
                              ? Colors.blue
                              : Colors.green,
                        );
                      }),
                      SizedBox(height: 12.25.h),
                      GetBuilder<AuthController>(builder: (_authController) {
                        bool containsLowerCase = lowerCaseRegExp.hasMatch(
                            _authController.newPasswordController.value.text);
                        bool containsUpperCase = upperCaseRegExp.hasMatch(
                            _authController.newPasswordController.value.text);
                        bool containsBoth =
                            containsLowerCase && containsUpperCase;
                        return Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _authController.newPasswordController.value.length >= 8
                                    ? Image.asset(
                                  'assets/images/tickIcon.png',
                                  height: 9.6.h,
                                  width: 13.w,
                                  color: blueColor,
                                )
                                    : const CircleAvatar(
                                  radius: 4,
                                  backgroundColor: blueColor,
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                   "Least 8 characters".tr,
                                  style: jost500(12.25.sp,
                                    _authController.newPasswordController.value.length >= 8
                                      ? blueColor
                                      : Colors.grey,),

                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                numberOrSymbolRegExp.hasMatch(
                                    _authController.newPasswordController.value.text)
                                    ? Image.asset(
                                  'assets/images/tickIcon.png',
                                  height: 9.6.h,
                                  width: 13.w,
                                  color: blueColor,
                                )
                                    : const CircleAvatar(
                                  radius: 4,
                                  backgroundColor: blueColor,
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                   "Least one number (0-9) or symbol".tr,
                                  style: jost500(12.25,
                                    numberOrSymbolRegExp.hasMatch(
                                      _authController.newPasswordController.value.text)
                                      ? blueColor
                                      : Colors.grey,),



                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                containsBoth
                                    ? Image.asset(
                                  'assets/images/tickIcon.png',
                                  height: 9.6.h,
                                  width: 13.w,
                                  color: blueColor,
                                )
                                    : const CircleAvatar(
                                  radius: 4,
                                  backgroundColor: blueColor,
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                   "Lowercase (a-z) and uppercase (A-Z)".tr,
                                  style: jost500(12.25.sp, containsBoth ? blueColor : Colors.grey,),



                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                      SizedBox(height: 25.34.h),
                      Text(
                       "Confirm Password",
                        style: jost500(17.sp, blueColor),

                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 43.75.h,
                        child: EmailCustomTextFiled(
                          readOnly: false,
                          controller: _authController.confirmPasswordController.value,
                          hintText: '***',
                          hintColor: blueColor,
                          hintTextSize: 11.sp,
                          prefixIcon: passwordIcon,
                          isBorder: true,
                          isPassword: true,
                          obscuringCharacter: '*',
                          isObscure: isChecked1,
                          passwordFunction: () {
                            setState(() {
                              isChecked1 = !isChecked1;
                            });
                            return null;
                          },
                          borderRadius: 13.sp,
                          fillColor: Colors.transparent,
                          beforePasswordIcon: Icons.visibility_off_outlined,
                          afterPasswordIcon: Icons.visibility,
                        ),
                      ),
                      SizedBox(height: 42.25.h),
                      CustomButton(text: 'Reset Password', color: redColor, onPressed: () {
                        Get.to(LoginScreen());
                      },
                        // height: 51.h,
                        // title: "Reset Password",
                        // textSize: 19.sp,
                        // onTap: () {
                        //   if (_authController.newPasswordController.value.text ==
                        //       _authController.confirmPasswordController.value.text) {
                        //     CustomRoute1.navigateAndRemoveUntil(
                        //         context,
                        //         const LoginView(),
                        //             (route) => false);
                        //   } else {
                        //     Get.snackbar("Error", "Passwords do not match",
                        //         colorText: Colors.white);
                        //   }
                        // },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// part of '../pinput.dart';

extension PinputControllerExt on TextEditingController {
  /// The length of the Pinput value
  int get length => this.text.length;

  /// Sets Pinput value
  void setText(String pin) {
    this.text = pin;
  }}


class EmailCustomTextFiled extends StatelessWidget {
  String? hintText;
  TextEditingController? controller;
  bool? isFilled;
  Color? fillColor;
  String? fontFamily;
  Color? hintColor;
  FontWeight? fontWeight;
  double? hintTextSize;
  String? Function(String?)? validator;
  Function(String)? onChange;
  VoidCallback? passwordFunction;
  double? borderRadius;
  bool? isBorder;
  IconData? suffixIcon;
  String? prefixIcon;
  bool? isErrorBorder;
  TextInputType? keyboardType;
  bool? isPassword;
  IconData? beforePasswordIcon;
  IconData? afterPasswordIcon;
  bool? isObscure;
  final bool readOnly;
  final String? obscuringCharacter;

  EmailCustomTextFiled({
    super.key,
    this.hintText,
    this.controller,
    this.isFilled,
    this.fillColor,
    this.fontFamily,
    this.hintColor,
    this.hintTextSize,
    this.fontWeight,
    this.validator,
    this.isBorder,
    this.borderRadius,
    this.suffixIcon,
    this.prefixIcon,
    this.isErrorBorder,
    this.onChange,
    this.keyboardType,
    this.isPassword,
    this.passwordFunction,
    this.beforePasswordIcon,
    this.isObscure,
    this.afterPasswordIcon,
    required this.readOnly,
    this.obscuringCharacter,
  });

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChange,
      keyboardType: keyboardType,
      obscureText: isObscure ?? false,
      focusNode: _focusNode,
      style: TextStyle(
        color: blueColor,
        fontSize: 14.65.sp,
        fontWeight: FontWeight.w400,
      ),
      readOnly: readOnly,
      decoration: InputDecoration(
        suffixIcon: isPassword == true
            ? IconButton(
          onPressed: passwordFunction,
          icon: Icon(
            // size: 15,
            isObscure == true ? beforePasswordIcon : afterPasswordIcon,
            color:blueColor,
          ),
        )
            : Icon(
          suffixIcon,

        ),
        prefixIcon: prefixIcon != null
            ? Image.asset(
          prefixIcon!,
          color: blueColor,
          scale: 3,
          // fit: BoxFit.fill,
        )
            : null,
        filled: isFilled ?? true,
        fillColor: fillColor ?? blueColor,
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: fontFamily ?? 'jost',
          fontSize: hintTextSize ?? 15.sp,
          color: hintColor ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.w400,
        ),
        border: isBorder == true
            ? OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.31.r),
          borderSide:  BorderSide(color: Colors.cyan, width: 3.w),
        )
            : InputBorder.none,
        errorBorder: isErrorBorder == true
            ? OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.cyan),
          borderRadius: BorderRadius.circular(13.31.r),
        )
            : InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: blueColor, width: 1.w
          ),
          borderRadius: BorderRadius.circular(13.31.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.cyan, width: 1.w),
          borderRadius: BorderRadius.circular(13.31.r),
        ),
      ),
    );
  }
}