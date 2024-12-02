import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';
import '../widgets/custom_appbar.dart';

class FinalExams extends StatelessWidget {
  const FinalExams({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Final Exams',
              style: jost700(20.sp, redColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            Stack(children: [
              Container(
                //      height: 139.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(10.r)),
                child: Container(
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 1.w, // Width of the border
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.39.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 107.w,
                          height: 112.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                5.69.r), // Apply the same radius here
                            child: Image(
                              image:
                              AssetImage('assets/images/exams_image.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Algebra ",
                                    style:
                                    jost600(20.sp, Colors.white), // jost500
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                                width: 169.w,
                                child: Text(
                                  'Master the basics of algebra with practice questions covering key concepts',
                                  style: jost600(8.sp, Colors.white),
                                )),
                            SizedBox(height: 14.h),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/time.png',
                                          height: 12.h,
                                          width: 12.w,
                                        ),
                                        SizedBox(width: 6.w),
                                        Text(
                                          '3 hour',
                                          style: jost500(8.sp, Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/study.png',
                                          height: 12.h,
                                          width: 12.w,
                                        ),
                                        SizedBox(width: 6.w),
                                        Text(
                                          '11 Lessons',
                                          style: jost500(8.sp, Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 92.h,
                right: 0,
                child: Container(

                  height: 42.h,
                  width: 93.w,
                  decoration: BoxDecoration(color: textfieldColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(6.r)
                      )
                  ),
                  child: Center(
                    child: Text('\$120',style: jost700(20.sp, redColor),),
                  ),
                ),
              ),
              Positioned(
                  top: 5,
                  right: 11,
                  child: Row(
                    children: [
                      Image.asset('assets/images/star.png',height: 14.h,width: 14.w,),
                      Text(' 4.3',style: jost600(10.sp, Colors.white),)
                    ],
                  ))
            ]),
            SizedBox(
              height: 20.h,
            ),
            Stack(children: [
              Container(
                //      height: 139.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(10.r)),
                child: Container(
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 1.w, // Width of the border
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.39.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 107.w,
                          height: 112.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                5.69.r), // Apply the same radius here
                            child: Image(
                              image:
                              AssetImage('assets/images/exams_image.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Earth Science ",
                                    style:
                                    jost600(20.sp, Colors.white), // jost500
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                                width: 169.w,
                                child: Text(
                                  'Examines the physical constitution of the Earth and its atmosphere',
                                  style: jost600(8.sp, Colors.white),
                                )),
                            SizedBox(height: 14.h),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/time.png',
                                          height: 12.h,
                                          width: 12.w,
                                        ),
                                        SizedBox(width: 6.w),
                                        Text(
                                          '3 hour',
                                          style: jost500(8.sp, Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/study.png',
                                          height: 12.h,
                                          width: 12.w,
                                        ),
                                        SizedBox(width: 6.w),
                                        Text(
                                          '11 Lessons',
                                          style: jost500(8.sp, Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 92.h,
                right: 0,
                child: Container(

                  height: 42.h,
                  width: 93.w,
                  decoration: BoxDecoration(color: textfieldColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(6.r)
                      )
                  ),
                  child: Center(
                    child: Text('\$120',style: jost700(20.sp, redColor),),
                  ),
                ),
              ),
              Positioned(
                  top: 5,
                  right: 11,
                  child: Row(
                    children: [
                      Image.asset('assets/images/star.png',height: 14.h,width: 14.w,),
                      Text(' 4.3',style: jost600(10.sp, Colors.white),)
                    ],
                  ))
            ]),

            SizedBox(
              height: 20.h,
            ),
            Stack(children: [
              Container(
                //      height: 139.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(10.r)),
                child: Container(
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 1.w, // Width of the border
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.39.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 107.w,
                          height: 118.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                5.69.r), // Apply the same radius here
                            child: Image(
                              image:
                              AssetImage('assets/images/exams_image.png',),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 158.w,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Data Structures and Algorithms",
                                      style:
                                      jost600(15.sp, Colors.white), // jost500
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                                width: 169.w,
                                child: Text(
                                  'Covers organizing data and creating efficient solutions',
                                  style: jost600(8.sp, Colors.white),
                                )),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/time.png',
                                          height: 12.h,
                                          width: 12.w,
                                        ),
                                        SizedBox(width: 6.w),
                                        Text(
                                          '3 hour',
                                          style: jost500(8.sp, Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/study.png',
                                          height: 12.h,
                                          width: 12.w,
                                        ),
                                        SizedBox(width: 6.w),
                                        Text(
                                          '11 Lessons',
                                          style: jost500(8.sp, Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100.h,
                right: 0,
                child: Container(

                  height: 42.h,
                  width: 93.w,
                  decoration: BoxDecoration(color: textfieldColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(6.r)
                      )
                  ),
                  child: Center(
                    child: Text('\$120',style: jost700(20.sp, redColor),),
                  ),
                ),
              ),
              Positioned(
                  top: 5,
                  right: 11,
                  child: Row(
                    children: [
                      Image.asset('assets/images/star.png',height: 14.h,width: 14.w,),
                      Text(' 4.3',style: jost600(10.sp, Colors.white),)
                    ],
                  ))
            ]),

          ],
        ),
      ),
    );
  }
}
