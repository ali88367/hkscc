import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/auth/signup.dart';


import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';
import '../navbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _rememberMe = false;

  void _toggleRememberMe() {
    setState(() {
      _rememberMe = !_rememberMe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:   Column(
        children: [
          Container(
        //    height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(eclipseDownward),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                SizedBox(
                  height: 55.h,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 297.h,
                      width: 297.w,
                      child: Image.asset(
                        "assets/images/whitecircle.png",
                      ),
                    ),
                    Positioned(
                        top: 46,
                        left: 55,
                        child: Image.asset(logo,height: 205.h,width: 205.w,))
                  ],
                ),


                SizedBox(
                  height: 27.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child:Text('Login',style: jost700(35.sp, Colors.white),)
                ),



                SizedBox(height: 18.h),
              ],
            ),
          ),
          SizedBox(height: 29.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                /// Your Email Textfield
                Container(
                  width: double.infinity,
                  child: CustomTextField1(
                    hintText: 'Your email',
                    hintTextSize: 14.65.sp,
                    prefixIcon: Icons.email,
                  ),
                ),
                SizedBox(height: 12.25.h),

                /// Your Password Textfield
                Container(
                  width: double.infinity,
                  child: CustomTextField1(
                    hintText: 'Your password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    obscuringCharacter: '*',
                    suffixIcon: Icons.visibility,
                    hintTextSize: 14.65.sp,
                  ),
                ),
                SizedBox(height: 15.25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: _toggleRememberMe,
                          child: Container(
                            width: 16.w,
                            height: 16.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: _rememberMe ? Colors.red : Colors.white,
                              border: Border.all(
                                color: _rememberMe ? Colors.grey : Colors.grey,
                              ),
                            ),
                            child: _rememberMe
                                ? Icon(
                              Icons.check,
                              size: 12.h,
                              color: Colors.white,
                            )
                                : null,
                          ),
                        ),
                        SizedBox(
                            width: 8
                                .w), // Add some space between checkbox and text
                        Text(
                        "Remember information",
                          style: jost400(14.sp, Color.fromRGBO(192, 208, 221, 1)),


                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => ForgetPasswordScreen());
                        },
                        child: Text(
                        "Forgot password?",
                          style: jost600(13.sp, Color.fromRGBO(219, 92, 0, 1)),


                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31.h),
                CustomButton(text: 'Login', color: redColor, onPressed: (){ Get.to(()=>AppNavBar());}),
                SizedBox(height: 31.h),
                GestureDetector(
                  onTap: () {
                    //       CustomRoute.navigateTo(context, SignupView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       'Don’t have an account?',
                        style: jost400(15.sp, Color.fromRGBO(192, 208, 221, 1)),

                      ),
                      GestureDetector(
                        onTap: (){

                          Get.to(()=>SignupView());
                        },
                        child: Text(
                       ' Sign Up',
                          style: jost600(15.sp, Color.fromRGBO(219, 92, 0, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )


        ],
      ),
    );
  }
}
