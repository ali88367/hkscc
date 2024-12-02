import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/widgets/custom_appbar.dart';
import 'package:hkksccc/widgets/loading_circle.dart';


import 'about_exam.dart';
import 'const/colors.dart';
import 'const/textstyle.dart';

class Exams extends StatefulWidget {
  const Exams({super.key});

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {

  int _selectedIndex = 0;


  // List of tabs
  List<String> tabs = ['Mathematics', 'Science', 'Computer Science', 'English'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
        preferredSize:  Size.fromHeight(65.h),
    child: CustomAppBar(),

    ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 42.h,),
            Text('Hello, Saad',style: jost500(28.sp, Colors.black),),
            SizedBox(height: 21.h,),
            Container(

              height: 37.92.h,
              decoration: BoxDecoration(
                color: textfieldColor,
                borderRadius: BorderRadius.circular(11.38.r),
                border: Border.all(
                  color: Colors.transparent,
                  width: 1.w,
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildTabItem(0, 'Mathematics'),
                    if (_selectedIndex != 0) buildDivider(),


                    buildTabItem(1, 'Science'),
                    if (_selectedIndex != 1)
                      buildDivider(), // Only show divider if not on Operations
                    buildTabItem(2, 'Computer Science'),
                    if (_selectedIndex != 2)
                      buildDivider(), // Only show divider if not on Importance
                    buildTabItem(3, 'English'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            // Visibility widgets for tab contents
            buildTabContent(),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }

  Widget buildTabItem(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        child: Container(
          height: 30.34.h,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? redColor : Colors.transparent,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: _selectedIndex == index
                  ? Colors.transparent
                  : Colors.transparent,
              width: 0.5.w,
            ),
          ),
          child: Center(
            child: FittedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(
                  title,
                  style: jost700(
                    10.sp,
                    _selectedIndex == index ? Colors.white : greyColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget buildDivider() {
    return Container(
      width: 1.w,
      height: 15.h,
      color: greyColor,
    );
  }

  Widget buildTabContent() {
    switch (_selectedIndex) {
      case 0:
        return Mathematics();
      case 1:
        return Science();
      case 2:
        return ComputerScience();
      case 3:
        return English();
      default:
        return Container();
    }
  }

  Widget Mathematics() {
    return Column(
      children: [
        GestureDetector(
         onTap: (){
           Get.to(AboutExam());
         },
          child: Stack(
            children: [

              Container(
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 91.01.w,
                        height: 91.01.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                          child: Image(
                            image: AssetImage('assets/images/exams_image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.62.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Mock Exam - ",
                                  style: jost500(12.sp, Colors.white), // jost500
                                ),
                                TextSpan(
                                  text: "Algebra Basics",
                                  style: jost400(12.sp, Colors.white), // jost400
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Status: ",
                                  style: jost500(12.sp, Colors.white), // jost500
                                ),
                                TextSpan(
                                  text: "Completed",
                                  style: jost400(12.sp, Colors.white), // jost400
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 22.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Last Attempt: ",
                                  style: jost500(12.sp, Colors.white), // jost500
                                ),
                                TextSpan(
                                  text: "Oct 15, 2023",
                                  style: jost400(12.sp, Colors.white), // jost400
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              Positioned(
                right: 10.w,
                bottom: 0.h,
                top: 60.h,
                child: const LoadingPercentageCircle(
                  percentage: 15,
                  // Example percentage
                  size: 38,
                  // Example size
                  strokeWidth: 6,
                  // Example stroke width
                  backgroundColor: Color.fromRGBO(184,66,104,1),
                  progressColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.h),
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exam_image2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Final Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Certified Project\nManagement",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Scheduled",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.62.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Nov 10, 2024",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.h),
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exam_image2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mock Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Biology\nEssentials",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "In Progress",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.62.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Nov 10, 2024",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }


  Widget Science() {
    return Column(
      children: [
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exams_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mock Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Algebra Basics",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Completed",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 22.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Oct 15, 2023",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),

      ],
    );
  }


  Widget ComputerScience() {
    return Column(
      children: [
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exams_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mock Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Algebra Basics",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Completed",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 22.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Oct 15, 2023",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.h),
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exam_image2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Final Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Certified Project\nManagement",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Scheduled",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.62.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Nov 10, 2024",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.h),

      ],
    );
  }

  Widget English() {
    return Column(
      children: [
        Stack(
          children: [

        Container(
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 91.01.w,
                  height: 91.01.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                    child: Image(
                      image: AssetImage('assets/images/exams_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8.62.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Mock Exam - ",
                            style: jost500(12.sp, Colors.white), // jost500
                          ),
                          TextSpan(
                            text: "Algebra Basics",
                            style: jost400(12.sp, Colors.white), // jost400
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Status: ",
                            style: jost500(12.sp, Colors.white), // jost500
                          ),
                          TextSpan(
                            text: "Completed",
                            style: jost400(12.sp, Colors.white), // jost400
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Last Attempt: ",
                            style: jost500(12.sp, Colors.white), // jost500
                          ),
                          TextSpan(
                            text: "Oct 15, 2023",
                            style: jost400(12.sp, Colors.white), // jost400
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),


        Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.h),
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exam_image2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Final Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Certified Project\nManagement",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Scheduled",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.62.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Nov 10, 2024",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.h),
        Stack(
          children: [

            Container(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.39.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 91.01.w,
                      height: 91.01.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                        child: Image(
                          image: AssetImage('assets/images/exam_image2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.62.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mock Exam - ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Biology\nEssentials",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Status: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "In Progress",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.62.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Last Attempt: ",
                                style: jost500(12.sp, Colors.white), // jost500
                              ),
                              TextSpan(
                                text: "Nov 10, 2024",
                                style: jost400(12.sp, Colors.white), // jost400
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              right: 10.w,
              bottom: 0.h,
              top: 60.h,
              child: const LoadingPercentageCircle(
                percentage: 15,
                // Example percentage
                size: 38,
                // Example size
                strokeWidth: 6,
                // Example stroke width
                backgroundColor: Color.fromRGBO(184,66,104,1),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
