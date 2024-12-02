import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/transaction_screens/trans_sum.dart';
import 'package:hkksccc/transaction_screens/transcation_list.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Image.asset('assets/images/card.png',width: 273.w,height: 151.h,)),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: RichText(
        
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Recent ',
                            style: jost700(20.sp, redColor),
                          ),
                          TextSpan(
                            text: 'Transaction',
                            style: jost700(20.sp, Colors.black), // Use redColor for "Cart"
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 28.h,),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/papers.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Calculus Mock Exam,\nAlgebra Mock Exam',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(
                        width: 36.w,
                      ),
                      Text(
                        'Transaction ID:\nMOCK20231015',
                        style: jost400(11.sp, greyColor),
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                  SizedBox(height: 28.h,),
                  Row(
        
                    children: [
                      Image.asset(
                        'assets/images/money.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Grand Total: \$45.00',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(
                        width: 36.w,
                      ),
                      Text(
                        'Yesterday 9:41 pm',
                        style: jost400(11.sp, greyColor),
                      ),
        
                    ],
                  ),
                  SizedBox(height: 26.h,),
        
                ],
              ),
            ),
            GestureDetector(
                onTap: (){
                  Get.to(TransSum());
                },
                child: Image.asset('assets/images/banner.png',width: double.infinity,)),
            SizedBox(height: 21.h,),
            Container(
              padding: EdgeInsets.only(left:28.w ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 1),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Transaction ',
                              style: jost600(24.sp, Colors.black),
                            ),
                            TextSpan(
                              text: 'List',
                              style: jost600(24.sp, redColor),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                       onTap: (){
                         Get.to(TranscationList());
                       },
                        child: Container(
                          height:23.h ,
                          width: 63.w,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 238, 255, 1),

                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(child: Text('See all',style: jost500(12.sp, greyColor),)),
                        ),
                      ),
                      SizedBox(width: 0.w),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/papers.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Calculus Mock Exam,\nAlgebra Mock Exam',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(width: 36.w),
                      Text(
                        'Transaction ID:\nMOCK20231015',
                        style: jost400(11.sp, greyColor),
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/papers.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Biology Final Exam',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(width: 36.w),
                      Text(
                        'Transaction ID: TX12348',
                        style: jost400(11.sp, greyColor),
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                  SizedBox(height: 17.h),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/papers.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Algebra Mock Exam',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(width: 36.w),
                      Text(
                        'Transaction ID: TX12348',
                        style: jost400(11.sp, greyColor),
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                  SizedBox(height: 17.h),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/papers.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Biology Final Exam',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(width: 36.w),
                      Text(
                        'Transaction ID: TX12348',
                        style: jost400(11.sp, greyColor),
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                  SizedBox(height: 17.h),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/papers.png',
                        height: 45.h,
                        width: 45.w,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Biology Final Exam',
                        style: jost400(11.sp, Colors.black),
                      ),
                      SizedBox(width: 36.w),
                      Text(
                        'Transaction ID: TX12348',
                        style: jost400(11.sp, greyColor),
                      ),

                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
