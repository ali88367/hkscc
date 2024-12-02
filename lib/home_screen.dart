import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hkksccc/widgets/custom_appbar.dart';

import 'Drawer/drawer.dart';
import 'const/colors.dart';
import 'const/textstyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(65.h),
        child: CustomAppBar(),
      ),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 34.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
              height: 138.h,
              width: 320.w,
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 3,
                    offset: Offset(0, 1), // First shadow: 0px 1px 3px
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    spreadRadius: 3,
                    offset: Offset(0, 4), // Second shadow: 0px 4px 8px
                  ),
                ],
              ),
              child: Text(
                'Welcome to NetExam, your go-to app for comprehensive exam preparation! Purchase mock exams to practice anytime, or schedule final exams and track your progress toward success',
                style: jost500(14.sp, Colors.white),
              ),
            ),
            SizedBox(height: 31.h,),
            Row(

              children: [
                Column(
                  children: [
                    Container(
                      //  height: 200.h,
                      width: 145.w,
                      decoration: BoxDecoration(
                          color:Color.fromRGBO(223,243,254,1) ,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 21.h,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 17.w,),
                            child: Image.asset('assets/images/dailyQuiz.png',height: 89.h,width: 89.w,),
                          ),
                          SizedBox(height: 13.h,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.w,),
                            child: Container(
                              child: Text(
                                'Daily Quiz Challenge',
                                style: jost700(18.sp, blackColor).copyWith(
                                  height: 1.0, // Adjust the line height here (default is null)
                                ),
                              ),
                            ),

                          ),
                          SizedBox(height: 13.h,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 21.w,),
                            child: Container(

                                child: Text('05 Questions',style: jost600(10.sp,blackColor ,),)),
                          ),
                          SizedBox(height: 17.h,),

                        ],
                      ),
                    ),
                    SizedBox(height: 9.h,),
                    Container(

                      //  height: 200.h,
                      width: 145.w,
                      decoration: BoxDecoration(
                          color:Color.fromRGBO(231,224,255,1),
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 27.h,),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19.w,),
                            child:Container(
                              child: Text(
                                'Study Materials',
                                style: jost700(18.sp, blackColor).copyWith(
                                  height: 1.0, // Adjust the line height here (default is null)
                                ),
                              ),
                            ),

                          ),
                          SizedBox(height: 6.h,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 21.w,),
                            child: Container(

                                child: Text('23 Materials',style: nunito600(10.sp,blackColor ,),)),
                          ),
                          SizedBox(height: 31.h,),

                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 17.w),
                  child: Column(
                    children: [
                      Container(

                          height: 113.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                            color:Color.fromRGBO(253,239,228,1),
                            borderRadius: BorderRadius.circular(5.r)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 40.h,),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.w,),
                              child: Container(
                                child: Text(
                                  'Mock Exams',
                                  style: jost700(18.sp, blackColor).copyWith(
                                    height: 1.0, // Adjust the line height here (default is null)
                                  ),
                                ),
                              ),

                            ),
                            SizedBox(height: 2.h,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 21.w,),
                              child: Container(

                                  child: Text('100 Questions',style: nunito600(10.sp,blackColor ,),)),
                            ),
                            SizedBox(height: 31.h,),

                          ],
                        ),
                      ),

                      SizedBox(height: 9.h,),
                      Container(
                          height: 215.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                            color:Color.fromRGBO(223,243,254,1) ,

                            borderRadius: BorderRadius.circular(5.r)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 21.h,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17.w,),
                              child: Image.asset('assets/images/practiceQuestions.png',height: 89.h,width: 89.w,),
                            ),
                            SizedBox(height: 13.h,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.w,),
                              child:Container(
                                child: Text(
                                  'Practice Questions',
                                  style: jost700(18.sp, blackColor).copyWith(
                                    height: 1.0,
                                  ),
                                ),
                              ),

                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 21.w,),
                              child: Container(

                                  child: Text('200 Questions\n29 Topic sheets',style: nunito600(10.sp,blackColor ,),)),
                            ),
                            SizedBox(height: 17.h,),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),





          ],
        ),
      ),


    );
  }
}
