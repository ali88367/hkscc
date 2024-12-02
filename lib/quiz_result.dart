import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'const/colors.dart';
import 'const/images.dart';
import 'const/textstyle.dart';

class QuizResult extends StatelessWidget {
  const QuizResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.22),
                blurRadius: 10.4,
                offset: Offset(0, 4), // Shadow position
              ),
            ],
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 21.7,
                sigmaY: 21.7,
              ),
              child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent, // Ensures transparency for blur
                title: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Centered logo
                    Image.asset(
                      'assets/images/HkLogo.png', // Replace with your logo file
                      height: 65.h,
                      width: 65.w,
                      alignment: Alignment.center,
                    ),
                    // Back button aligned to the left
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Your Result',
                style: jost500(24.sp, Colors.black),
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Question 1',
                style: jost500(16.sp, greyColor),
              ),
          
              SizedBox(
                height: 17.h,
              ),
              Container(
                height: 302.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.r),
                  color: textfieldColor
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 11.w),
                      child: Text('What is the area of a triangle with a base of 10 units and a height of 5 units?',style: jost500(15.sp, Colors.black),),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text('The Answer',style: jost500(15.sp, greyColor),),
                    ),
                    SizedBox(height: 8.h,),
                    Center(
                      child: Container(
                        height: 52.h,
                        width: 263.w,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(110, 219, 80, 1),
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: blueColor ,width: 0.5.w)
          
                      ),
                        child: Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                Colors.white,
          
                                border: Border.all(
                                  color:
                                  Colors.green ,
                                  width: 1,),
          
          
                              ),
          
                              child: Center(
                                  child: Icon(
                                      size: 18.sp,
                                      Icons.check ,
          
                                      color: Colors.green )
          
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('x=4',style: jost500(15.sp, Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text('Your Choice',style: jost500(15.sp, greyColor),),
                    ),
                    SizedBox(height: 8.h,),
                    Center(
                      child: Container(
                        height: 52.h,
                        width: 263.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: redColor ,width: 1.w)
          
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                Colors.white,
          
                                border: Border.all(
                                  color:
                                  redColor ,
                                  width: 1,),
          
          
                              ),
          
                              child: Center(
                                  child: Icon(
                                      size: 18.sp,
                                      Icons.check ,
          
                                      color: Colors.white )
          
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('x=4',style: jost500(15.sp, Colors.black),)
                          ],
                        ),
                      ),
                    ),
          
                
          
                  ],
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Container(
                height: 302.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    color: textfieldColor
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 11.w),
                      child: Text('What is the area of a triangle with a base of 10 units and a height of 5 units?',style: jost500(15.sp, Colors.black),),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text('The Answer',style: jost500(15.sp, greyColor),),
                    ),
                    SizedBox(height: 8.h,),
                    Center(
                      child: Container(
                        height: 52.h,
                        width: 263.w,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(110, 219, 80, 1),
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: blueColor ,width: 0.5.w)
          
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                Colors.white,
          
                                border: Border.all(
                                  color:
                                  Colors.green ,
                                  width: 1,),
          
          
                              ),
          
                              child: Center(
                                  child: Icon(
                                      size: 18.sp,
                                      Icons.check ,
          
                                      color: Colors.green )
          
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('x=4',style: jost500(15.sp, Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text('Your Choice',style: jost500(15.sp, greyColor),),
                    ),
                    SizedBox(height: 8.h,),
                    Center(
                      child: Container(
                        height: 52.h,
                        width: 263.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: redColor ,width: 1.w)
          
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                Colors.white,
          
                                border: Border.all(
                                  color:
                                  redColor ,
                                  width: 1,),
          
          
                              ),
          
                              child: Center(
                                  child: Icon(
                                      size: 18.sp,
                                      Icons.check ,
          
                                      color: Colors.white )
          
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text('x=4',style: jost500(15.sp, Colors.black),)
                          ],
                        ),
                      ),
                    ),
          
          
          
                  ],
                ),
              ),
              SizedBox(
                height: 75.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
