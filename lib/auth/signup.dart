import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';
import '../user_profile.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isChecked = false;
  File? _image; // Variable to store the selected image

  // Future<void> _pickImage() async {
  //   final ImagePicker picker = ImagePicker();
  //   final XFile? pickedFile = await picker.pickImage(
  //     source: ImageSource.gallery,
  //   );
  //
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }
  //
  // Future<void> _takePhoto() async {
  //   final ImagePicker picker = ImagePicker();
  //   final XFile? pickedFile = await picker.pickImage(
  //     source: ImageSource.camera,
  //   );
  //
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }
  //
  // void _showImageSourceDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: CustomText(
  //           text: 'Choose an Option',
  //           textColor: AppColors.redColor,
  //           fontWeight: FontWeight.w500,
  //           fontSize: 12.sp,
  //         ),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //                 _pickImage(); // Pick image from gallery
  //               },
  //               child: CustomText(
  //                 text: 'Gallery',
  //                 textColor: AppColors.blueColor,
  //                 fontWeight: FontWeight.w500,
  //                 fontSize: 15.sp,
  //               ),
  //             ),
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //                 _takePhoto(); // Take photo with camera
  //               },
  //               child: CustomText(
  //                 text: 'Camera',
  //                 textColor: AppColors.blueColor,
  //                 fontWeight: FontWeight.w500,
  //                 fontSize: 15.sp,
  //               ),
  //             ),
  //           ],
  //         ),
  //         backgroundColor:
  //         AppColors.backgroundColor, // Change this to your desired color
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(eclipseDownward),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [


                    SizedBox(
                      height: 150.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                      'Sign up ',
                        style: jost700(35.sp, Colors.white),

                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Explore new content, manage your profile, and connect with others—all from here',
                        style: jost600(14.sp, Colors.white,),
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),

                    /// Image Upload
                    GestureDetector(
                      // onTap: () => _showImageSourceDialog(
                      //     context), // Open image picker on tap
                      child: Container(
                        height: 106.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: _image == null
                            ? Image.asset('assets/images/upload.png',
                            fit: BoxFit.contain)
                            : ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.file(
                            _image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: 18.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                child: Column(
                  children: [
                    Container(
                      width: 311.w,
                      child: CustomTextField1(
                        hintText: 'Your name',
                        prefixIcon: Icons.person,
                        hintTextSize: 14.65.sp,
                        obscuringCharacter: null,
                        borderColor:Colors.transparent,
                        borderWidth: 1.w,
                      ),
                    ),
                    SizedBox(height: 16.25.h),
                    Container(
                      width: 311.w,
                      child: CustomTextField1(
                        hintText: 'Your email',
                        hintTextSize: 14.65.sp,
                        prefixIcon: Icons.email,
                        borderColor: Colors.transparent,
                        borderWidth: 1.w,
                      ),
                    ),
                    SizedBox(height: 14.25.h),
                    Container(
                      width: 311.w,
                      child: CustomTextField1(
                        borderColor: Colors.transparent,
                        borderWidth: 1.w,
                        hintText: 'Your password',
                        prefixIcon: FontAwesomeIcons.lock,
                        obscureText: true,
                        obscuringCharacter: '*',
                        suffixIcon: Icons.visibility,
                        hintTextSize: 14.65.sp,
                      ),
                    ),
                    SizedBox(height: 24.25.h),

                    /// Continue Button
                    CustomButton(
                      color: redColor,
                      text: "Continue",
                      onPressed: () {
                        Get.to(() => UserProfile());
                      },
                    ),
                    SizedBox(height: 14.25.h),

                    /// Text Span
                    Center(
                      child: SizedBox(
                        width: 307.w, // Adjust this width as needed
                        child: RichText(
                          textAlign:
                          TextAlign.center, // Align text in the center
                          text: TextSpan(
                            text: 'By signing up you agree to our ',
                            style: TextStyle(
                              color: Color.fromRGBO(17, 24, 39, 1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.5.h,
                              fontFamily: 'jost',
                            ),
                            children: [
                              TextSpan(
                                text: 'Terms of Services',
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 64, 100, 1),
                                  fontWeight: FontWeight.w500,
                                  height: 1.5.h,
                                  fontFamily: 'jost',
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Navigate to Terms of Service
                                  },
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: Color.fromRGBO(17, 24, 39, 1),
                                  height: 1.5.h,
                                  fontFamily: 'jost',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: TextStyle(
                                  color: Color.fromRGBO(19, 64, 100, 1),
                                  fontWeight: FontWeight.w500,
                                  height: 1.5.h,
                                  fontFamily: 'jost',
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //   Get.to(() => PrivacyPolicy());
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35.h),

                    /// Already have an Account
                    GestureDetector(
                      onTap: () {
                        //    CustomRoute.navigateTo(context, LoginView());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(

                      'Already have an account? ',
                            style: jost400(15.sp, Color.fromRGBO(17, 24, 39, 1),),
                          ),
                          GestureDetector(
                            onTap: (){
                            //  Get.to(()=>LoginView());

                            },
                            child: Text(

                            'Sign in',
                              style: jost600(15.sp, Color.fromRGBO(219, 92, 0, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
