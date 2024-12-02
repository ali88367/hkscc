import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/transaction_screens/transaction_summary.dart';


import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';
import '../widgets/custom_button.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 47.h,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Shopping ',
                    style: jost600(24.sp, Colors.black),
                  ),
                  TextSpan(
                    text: 'Cart',
                    style: jost600(24.sp, redColor), // Use redColor for "Cart"
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
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
            SizedBox(
              height: 22.h,
            ),
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
                  'Biology Final Exam',
                  style: jost400(11.sp, Colors.black),
                ),
                SizedBox(
                  width: 36.w,
                ),
                Text(
                  'Transaction ID: TX12348',
                  style: jost400(11.sp, greyColor),
                ),
                Column(
                  children: [],
                ),
              ],
            ),
            SizedBox(
              height: 75.h,
            ),
            Center(child: CustomButton(text: 'Confirm', color: redColor, onPressed: (){
              Get.to(TransactionSummary());
            },width: 185.w,))
          ],
        ),
      ),
    );
  }
}
