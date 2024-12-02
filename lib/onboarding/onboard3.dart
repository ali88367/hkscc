import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(viewportFraction: 1);

    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 59.h,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Seamless Purchase & Scheduling',
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
            height: 19.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),

            child: Text(
              'Easily purchase exams with a secure and streamlined checkout process. Schedule final exams at designated locations, all while managing your receipts and transactions in one convenient place. Simplified, transparent, and accessible at your fingertips.',
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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(eclipse),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Image.asset(
                    onboard3,
                    height: 270.h,
                    fit: BoxFit.cover,


                  ),
                  SizedBox(
                    height: 59.h,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
