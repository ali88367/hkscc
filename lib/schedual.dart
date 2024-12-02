import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'const/colors.dart';
import 'const/images.dart';
import 'const/textstyle.dart';

class ExamScheduleScreen extends StatefulWidget {
  const ExamScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ExamScheduleScreen> createState() => _ExamScheduleScreenState();
}

class _ExamScheduleScreenState extends State<ExamScheduleScreen> {
  int _selectedDayIndex = 2; // Default selected day index

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
                backgroundColor:
                Colors.transparent, // Ensures transparency for blur
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back button
                      GestureDetector(
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
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/images/topadd.png',height: 45.h,width: 45.w,)
                     
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 33.h),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
              ),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'february, 24 ',
                            style: jost600(25.sp, Colors.black)),
                        WidgetSpan(
                          child: Image.asset(
                            'assets/images/pencil.png',
                            height: 25.h,
                            width: 25.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/Calendar.png',
                    height: 42.h,
                    width: 42.w,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('3 exams today', style: jost600(14, greyColor)),
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  bool isSelected = index == _selectedDayIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedDayIndex = index;
                      });
                    },
                    child: Container(
                      width: 40.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                        color: isSelected ? redColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : const Color.fromRGBO(188, 193, 205, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            (21 + index).toString(),
                            style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 27.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                children: [
                  Text('Time', style: jost500(16.sp, lightgrey)),
                  SizedBox(width: 34.w),
                  Text('Exam', style: jost500(16.sp, lightgrey)),
                  const Spacer(),
                  Image.asset('assets/images/down.png',
                      height: 16.h, width: 20.w)
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '11:35',
                        style: jost500(16.sp, Colors.black),
                      ),
                      Text(
                        '13:05',
                        style: jost500(16.sp, lightgrey),
                      ),
                      SizedBox(height: 190.h),
                      Text(
                        '13:15',
                        style: jost500(16.sp, Colors.black),
                      ),
                      Text(
                        '14:45',
                        style: jost500(16.sp, lightgrey),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                Container(
                  height: 500,
                  width: 2.w,
                  color: Color.fromRGBO(250, 249, 249, 1),
                ),
                SizedBox(width: 16.w),
                Column(
                  children: [
                    Container(
                      width: 250.w,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mathematics',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset('assets/images/dots.png',height: 24.h,color: Colors.white,)
                            ],
                          ),

                           SizedBox(height: 12.h),
                          Row(
                            children: [
                              const Icon(Icons.location_on,
                                  size: 16, color: Colors.white),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  '123 Main Street, NY, 10001',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                           SizedBox(height: 8.h),
                          Row(
                            children: [
                              SizedBox(
                                height: 16.h,
                                width: 16.w,
                                child: CircleAvatar(

                                  child: Image.asset('assets/images/profile.png'),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Brooklyn Williamson',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.people,
                                  size: 16, color: Colors.white),
                               SizedBox(width: 4.w),
                              Text(
                                'Remaining Seats: 12',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                              width: 109.w,
                              height: 28.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(199, 200, 202, 1),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: blueColor,
                                    size:16.sp ,
                                  ),
                                  SizedBox(width: 4.w),

                                  Text(
                                    'Purchase Seat',
                                    style: jost500(11.sp, Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 37.h),
                    Container(
                      width: 250.w,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color:  Color.fromRGBO(246, 246, 245, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Biology',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset('assets/images/dots.png',height: 24.h,color: Colors.black,)
                            ],
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              const Icon(Icons.location_on,
                                  size: 16, color: Colors.black),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  '123 Main Street, NY, 10001',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              SizedBox(
                                height: 16.h,
                                width: 16.w,
                                child: CircleAvatar(

                                  child: Image.asset('assets/images/profile.png'),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Brooklyn Williamson',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.people,
                                  size: 16, color: Colors.black),
                              SizedBox(width: 4.w),
                              Text(
                                'Remaining Seats: 12',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                              width: 109.w,
                              height: 28.h,
                              decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: blueColor,
                                    size:16.sp ,
                                  ),
                                  SizedBox(width: 4.w),

                                  Text(
                                    'Purchase Seat',
                                    style: jost500(11.sp, Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
