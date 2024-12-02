import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/quiz_result.dart';
import 'package:hkksccc/widgets/custom_appbar.dart';
import 'package:hkksccc/widgets/custom_button.dart';

import 'const/colors.dart';
import 'const/textstyle.dart';

class ExamComplete extends StatelessWidget {
  const ExamComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(65.h),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Center(child: Image.asset('assets/images/examcomplete.png',width: double.infinity,)),
          Text('You have completed the Exam',style: jost500(18.sp, Colors.black) ,),
          SizedBox(height: 8.h,),
          Text('Mathematics',style: jost500(18.sp, Colors.black) ,),
          SizedBox(height: 15.h,),
          Text('Here are your results',style: jost500(16.sp, greyColor) ,),
          SizedBox(height: 20.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 13.w,top: 20.h),
                  height: 76.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: textfieldColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(
                        padding:  EdgeInsets.only(top: 3.h,right: 5.w),
                        child: Image.asset('assets/images/books.png',height: 18.h,width: 18.w,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('10',style: jost500(16.sp, Colors.black),),
                          Text('Total Questions',style: jost500(11.sp, greyColor),),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 19.w,),
                Container(
                  padding: EdgeInsets.only(left: 13.w,top: 20.h),
                  height: 76.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: textfieldColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(
                        padding:  EdgeInsets.only(top: 3.h,right: 5.w),
                        child: Image.asset('assets/images/clock.png',height: 18.h,width: 18.w,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('20 min',style: jost500(16.sp, Colors.black),),
                          Text('Working time',style: jost500(11.sp, greyColor),),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 22.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 13.w,top: 20.h),
                  height: 76.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: textfieldColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(
                        padding:  EdgeInsets.only(top: 3.h,right: 5.w),
                        child: Image.asset('assets/images/redstar.png',height: 18.h,width: 18.w,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('92',style: jost500(16.sp, Colors.black),),
                          Text('Exam Score',style: jost500(11.sp, greyColor),),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 19.w,),
                Container(
                  padding: EdgeInsets.only(left: 13.w,top: 20.h),
                  height: 76.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: textfieldColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15), // Shadow color with 15% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 3, // Amount of blur
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color with 30% opacity
                        offset: Offset(0, 1), // Horizontal and vertical offset
                        blurRadius: 2, // Amount of blur
                        spreadRadius: 0, // No spread
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(
                        padding:  EdgeInsets.only(top: 3.h,right: 5.w),
                        child: Image.asset('assets/images/shield-tick.png',height: 18.h,width: 18.w,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('9',style: jost500(16.sp, Colors.black),),
                          Text('Answered Questions',style: jost500(11.sp, greyColor),),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 22.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Expanded(child: CustomButton(text: 'Retake Exam', color: redColor, onPressed: (){},fontSize: 15.sp,)),
                SizedBox(width: 19.w,),
                Expanded(child: CustomButton(text: 'More Exams', color: redColor, onPressed: (){
                  Get.to(QuizResult());
                },fontSize: 15.sp,)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
