import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/widgets/custom_button.dart';
import 'package:hkksccc/widgets/custom_textfield.dart';


import 'auth/login.dart';
import 'const/colors.dart';
import 'const/images.dart';
import 'const/textstyle.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  final List<String> countries = ['United States', 'Canada', 'Pakistan'];
  final List<String> cities = ['New York', 'Toronto', 'Mumbai'];
  // Selected country
  String selectedCountry = 'United States';
  String selectedCity = 'New York';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0.h), // Adjust height as needed
        child: Stack(
          children: [
            // Backdrop blur effect
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 21.7, sigmaY: 21.7),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            // AppBar with box shadow
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.22),
                    offset: Offset(0, 4),
                    blurRadius: 10.4,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(13.0.r),
                  bottomRight: Radius.circular(13.0.r),
                ),
              ),
              child: AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(13.0.r),
                    bottomRight: Radius.circular(13.0.r),
                  ),
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 5.0.h),
                  child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),

                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Back button
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(width: 15.w,),
                                        Image.asset(
                                          color: redColor,
                                          bigArrow,
                                          scale: 2,
                                        ),
                                        Image.asset(
                                          color: redColor,
                                          bigArrow,
                                          scale: 3,
                                        ),
                                        Text(
                                          "  Back",
                                          style: jost600(20.sp, redColor),
                                        )
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                              ),
                            ),
                            SizedBox(width: 12.0.w),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                backgroundColor: Colors.white, // Replace with your secondaryColor
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          children: [
            SizedBox(height: 27.h,),
            Align(
                alignment: Alignment.topLeft,
                child: Text('Profile',style: jost600(24.sp, blueColor),)),
            SizedBox(height: 27.h,),
            Stack(
              children:[ Center(
                child: Image.asset(
                  'assets/images/profile.png',
                  height: 135.h,
                  width: 135.w,
                ),
              ),
                Positioned(
                    bottom: 5,
                    right: 90,
                    child: Image.asset('assets/images/imagepicker.png',height: 46.h,width: 46.w,))
      ]
            ),
            SizedBox(height: 29.h,),
            Row(
              children: [
                Expanded(child:  CustomTextField1(
                  hintText: 'First name',
                  prefixIcon: Icons.person,
                  hintTextSize: 14.65.sp,
                  obscuringCharacter: null,
                  borderColor:Colors.transparent,
                  borderWidth: 1.w,
                ),),
                SizedBox(width: 19.w,),

                Expanded(child:  CustomTextField1(
                  hintText: 'Last Name',
                  prefixIcon: Icons.person,
                  hintTextSize: 14.65.sp,
                  obscuringCharacter: null,
                  borderColor:Colors.transparent,
                  borderWidth: 1.w,
                ),),
              ],
            ),
            SizedBox(height: 25.h,),
            CustomTextField1(
              hintText: 'Your email',
              hintTextSize: 14.65.sp,
              prefixIcon: Icons.email,
              borderColor: Colors.transparent,
              borderWidth: 1.w,
            ),
            SizedBox(height: 25.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 50.h,
          decoration: BoxDecoration(
            color: textfieldColor, // Light blueish background
            borderRadius: BorderRadius.circular(13.r),
          ),
          child: Row(
            children: [
              Icon(
                Icons.location_city,
                color: blueColor, // City icon color
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: DropdownButton<String>(
                  value: selectedCity,
                  underline: SizedBox(), // Remove the default underline
                  isExpanded: true,
                  icon: Image.asset(
                    'assets/images/dropdown.png',
                    height: 15.h,
                    width: 8.w,
                  ),
                  items: cities.map((String city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Text(
                        city,
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 14.sp,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCity = newValue!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
            SizedBox(height: 25.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 50.h,
          decoration: BoxDecoration(
            color: textfieldColor, // Light blueish background
            borderRadius: BorderRadius.circular(13.r),
          ),
          child: Row(
            children: [
              Icon(
                Icons.language,
                color: blueColor, // Globe icon color
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: DropdownButton<String>(
                  value: selectedCountry,
                  underline: SizedBox(), // Remove the default underline
                  isExpanded: true,
                  icon: Image.asset(
                    'assets/images/dropdown.png',
                    height: 15.h,
                    width: 8.w,
                  ),
                  items: countries.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(
                        country,
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 14.sp,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCountry = newValue!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
            SizedBox(height: 25.h,),
            CustomButton(text: 'Submit', color: redColor, onPressed: (){
              Get.to(LoginScreen());
            })
          ],
        ),
      ),

    );
  }
}
