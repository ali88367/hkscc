import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/quiz.dart';
import 'package:hkksccc/take_exam.dart';


import 'const/colors.dart';
import 'const/images.dart';
import 'const/textstyle.dart';
import 'const/textstyle.dart' as GoogleFonts;


class AboutExam extends StatelessWidget {
  const AboutExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the entire FAB horizontally
          children: [
            Image.asset(
              'assets/images/shoppingcart.png',
              height: 45.h,
              width: 45.w,
            ),
            SizedBox(width: 24.w),
            GestureDetector(
              onTap: () {
                Get.to(TakeExam());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                height: 52.h,
                width: 227.w,
                decoration: BoxDecoration(
                  color: redColor,
                  border: Border.all(
                    color: Colors.cyan,
                  ),
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 1), // Horizontal and vertical offsets
                      blurRadius: 3, // How far the shadow spreads
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: Offset(0, 4), // Horizontal and vertical offsets
                      blurRadius: 8, // How far the shadow spreads
                      spreadRadius: 3, // How much the shadow extends
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Purchase',
                      style: GoogleFonts.jost700(20.sp, Colors.white),
                    ),
                    Image.asset(
                      'assets/images/icon.png',
                      height: 19.h,
                      width: 19.w,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
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
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 33.h,
              ),
              Stack(
                  children: [
                Container(
                  padding: EdgeInsets.only(left: 34.h, top: 32.h),
                  height: 187.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: redColor, borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mathematics',
                        style: GoogleFonts.jost600(10.sp, Colors.white),
                      ),
                      Text(
                        'Calculus Exam Preparation',
                        style: GoogleFonts.jost600(16.sp, Colors.white),
                      ),
                      SizedBox(
                        height:29.h,
                      ),
                      Text(
                        'Mock Exam',
                        style: GoogleFonts.jost400(14.sp, Colors.white,),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/stopwatch.png',height: 11.h,width: 9.w,),
                          SizedBox(
                            width:3.w,
                          ),
                          Text(
                            '1h 15min',
                            style: GoogleFonts.jost500(8.sp, Colors.white,),
                          ),


                        ],
                      ),
                      SizedBox(
                        height:10.h,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/groupphoto.png',height: 24.h),
                          SizedBox(
                            width:3.w,
                          ),
                          Text(
                            '2.5k',
                            style: jost700(9.sp, Colors.white,),
                          ),


                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 15.h,
                    right: 10.w,
                    child: Image.asset('assets/images/textbook.png',height: 86.h,width: 150.w,))
              ]),
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'About Exam',
                          style: jost600(20.sp, Colors.black),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/star.png',height: 12.h,width: 12.w,),
                            Text(
                              ' 4.3',
                              style: jost600(9.sp, Colors.black),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Image.asset('assets/images/heart.png',height: 13.h,width: 13.w,),


                          ],
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'Challenge your calculus skills with an exam covering limits, derivatives, and integrals. Perfect for reinforcing your understanding and preparing for advanced math courses. Test your problem-solving abilities with practical and theoretical questions.',
                      style: jost500(11.sp, Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Mock Exam -',
                            style:jost500(12.sp,Colors.black,

                            ),
                          ),
                          TextSpan(
                            text: ' Calculus Exam Preparations',
                            style:jost400(10.sp,Colors.black,

                            ),
                          ),

                        ],
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Module:',
                            style:jost500(12.sp,Colors.black,

                            ),
                          ),
                          TextSpan(
                            text: ' Algebra Basics',
                            style:jost400(10.sp,Colors.black,

                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 14.h,),
                    Text(
                      'Including',
                      style: jost500(
                        13.sp,
                        Colors.black,
                      ).copyWith(
                        decoration: TextDecoration.underline, // Adds underline
                        decorationColor: Colors.grey,         // Sets underline color to grey
                        decorationThickness: 2.h,             // Adjust thickness as needed
                      ),
                    ),
                    SizedBox(height: 14.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 59.h,
                          width: 98.h,
                          decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('Assignments',style:jost500(11.sp, Colors.white) ,)),
                        ),
                        Container(
                          height: 59.h,
                          width: 98.h,
                          decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('22\ndownloadable resources',style:jost500(11.sp, Colors.white) ,textAlign: TextAlign.center,)),
                        ),
                        Container(
                          height: 59.h,
                          width: 98.h,
                          decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('4 hours on-\ndemand video',style:jost500(11.sp, Colors.white) ,textAlign: TextAlign.center,)),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 59.h,
                          width: 98.h,
                          decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('Assignments',style:jost500(11.sp, Colors.white) ,)),
                        ),
                        Container(
                          height: 59.h,
                          width: 98.h,
                          decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('22\ndownloadable resources',style:jost500(11.sp, Colors.white) ,textAlign: TextAlign.center,)),
                        ),
                        Container(
                          height: 59.h,
                          width: 98.h,
                          decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('4 hours on-\ndemand video',style:jost500(11.sp, Colors.white) ,textAlign: TextAlign.center,)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Modules',
                        style: jost500(13.sp, Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 0.5.w, color: Colors.black),
                        color: redColor,
                      ),
                      child: ExpansionTile(
                        title: Text(
                          'Limits and Continuity',
                          style: jost700(13.sp, Colors.white),
                        ),
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 0.5.w, color: Colors.black),
                        color: redColor,
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        //        onTap:(){ Get.to(()=> Chapters());},
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/sbook.png',
                                              height: 17.h,
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                            Text(
                                              'Introduction to Limits',
                                              style: jost600(11.sp, Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      GestureDetector(
                                        //  onTap:(){ Get.to(()=> Chapters());},
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/sbook.png',
                                              height: 17.h,
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                            Text(
                                              'One-Sided and Infinite Limits',
                                              style: jost600(11.sp, Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      GestureDetector(
                                        //     onTap:(){ Get.to(()=> Chapters());},
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/sbook.png',
                                              height: 17.h,
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                            Text(
                                              'Continuity and Discontinuities',
                                              style: jost600(11.sp, Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      GestureDetector(
                                        //     onTap:(){ Get.to(()=> Chapters());},
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/sbook.png',
                                              height: 17.h,
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                            Text(
                                              'Continuity and Discontinuities',
                                              style: jost600(11.sp, Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      GestureDetector(
                                        //       onTap:(){ Get.to(()=> Chapters());},
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/sbook.png',
                                              height: 17.h,
                                            ),
                                            SizedBox(
                                              width: 10.h,
                                            ),
                                            Text(
                                              ' Quiz',
                                              style: jost600(11.sp, Colors.white),
                                              // textColor:whiteColor, fontWeight: FontWeight.w600,fontsize: 11.sp,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20.h)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '03:23',
                                            style: jost500(11.sp, textfieldColor),
                                          ),
                                          SizedBox(
                                            width: 10.h,
                                          ),
                                          Image.asset(
                                            'assets/images/check.png',
                                            height: 13.h,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '04:54',
                                            style: jost500(11.sp, textfieldColor),
                                          ),
                                          SizedBox(
                                            width: 10.h,
                                          ),
                                          Image.asset(
                                            'assets/images/check.png',
                                            height: 13.h,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '03:43',
                                            style: jost500(11.sp, textfieldColor),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        '02:28',
                                        style: jost500(11.sp, textfieldColor),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Get.to(()=> QuizPage());
                                          },
                                          child: Text('Start Quiz',
                                              style: jost500(11.sp, greyColor))),
                                      SizedBox(
                                        height: 20.h,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                          title: SizedBox(
                            width: 250.w,
                            child: Text(
                              'Derivatives and Differentiation Techniques',
                              style: jost700(12.sp, Colors.white),
                            ),
                          ),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
