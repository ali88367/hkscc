import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';
import '../widgets/custom_button.dart';

class TransSum extends StatelessWidget {
  const TransSum({super.key});
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
                    text: 'Transaction ',
                    style: jost600(24.sp, Colors.black),
                  ),
                  TextSpan(
                    text: 'Summary',
                    style: jost600(24.sp, redColor), // Use redColor for "Cart"
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your Choice',style: jost400(14.sp, Colors.black),),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Text(

                    'Transaction ID: TX12348',
                    style: jost400(11.sp, greyColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                  height: 100.h,
                  width: 152.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: redColor
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Credit Card',style: jost700(14.sp, Colors.white) ,),
                          Image.asset('assets/images/credit.png',height: 18.h,width: 18.w,)
                        ],
                      ),
                      SizedBox(height: 6.h,),
                      Text('**** **** **** 1234',style: jost700(12.sp, Colors.white) ,),
                      Text('Bank of America',style: jost700(14.sp, Colors.white) ,),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                  height: 100.h,
                  width: 152.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color:   Color.fromRGBO(240, 240, 240, 1)
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Digital Wallet',style: jost700(14.sp, greyColor) ,),

                      SizedBox(height: 6.h,),
                      Text('+1 123-456-7890',style: jost700(12.sp, greyColor) ,),
                      SizedBox(height: 1.2.h,),
                      Text('PayPal',style: jost700(14.sp, greyColor) ,),

                    ],
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 22.h,
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Text(

                'Transaction ID: TX12348',
                style: jost400(11.sp, greyColor),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price',style: jost400(14.sp, Colors.black) ,),
                Text('\$130',style: jost700(14.sp, Colors.black) ,),

              ],
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Effective Tax Rate',style: jost400(14.sp, Colors.black) ,),
                Text('8%',style: jost700(14.sp, Colors.black) ,),

              ],
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tax charges',style: jost400(14.sp, Colors.black) ,),
                Text('\$16.25',style: jost700(14.sp, Colors.black) ,),

              ],
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Payable',style: jost400(14.sp, Colors.black) ,),
                Text('146.25',style: jost700(14.sp, redColor) ,),

              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Text(

                'Applicable Date: Feb 9, 2024',
                style: jost400(11.sp, greyColor),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
