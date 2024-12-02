
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';


class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(viewportFraction: 1);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 59.h,
          ),
          ///  Text Interactive Learning Courses & Quizzes.
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Personalized Study Progress Tracking',
                    style: GoogleFonts.jost(
                      fontSize: 28.sp,
                      color: redColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 35.81.h,
          ),
          // Text long
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),

            child: Text(
              'Track your study journey with detailed performance analytics on each exam. Review your correct and incorrect answers, identify areas for improvement, and see your progress over time. Stay motivated with insights that guide your learning.',
              textAlign: TextAlign.center,
              style: jost500(14.sp, onboardtext),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(eclipse),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  SizedBox(
                    height: 63.h,
                  ),
                  SizedBox(
                      height: 286.h,
                      width: 287.w,
                      child: Image.asset(
                       onboard2,
                        fit: BoxFit.contain,
                      )),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
