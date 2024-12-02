
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';


class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

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
          /// Text The best Medical Device Library in the world.
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Comprehensive Mock and Final Exams',
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
            height: 21.81.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                'Access a wide range of mock exams anytime, designed to simulate the real test experience and boost your confidence. For final exams, simply purchase and schedule a date at a certified location. Get a complete prep solution, all in one app.',
                textAlign: TextAlign.center,
                style: jost500(14.sp, onboardtext),

              )

          ),
          SizedBox(
            height: 25.19.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage(eclipse),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height:100.h,
                  ),
                  SizedBox(
                    height: 256.h,
                    width: 249.w,
                    child: Image.asset(
                    onboard1,
                      height: 274.h,
                      width: 309.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // SizedBox(
                  //   height: 60.h,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
