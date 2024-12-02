import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/Drawer/purchased_exams.dart';

import '../auth/login.dart';
import '../const/colors.dart';
import '../const/textstyle.dart';
import '../navbar.dart';
import '../transaction_screens/shopping_cart.dart';
import 'final_exams.dart';
import 'mock_exams.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 290.w,
      backgroundColor: redColor,
      child: SafeArea(
        child: Column(
          children: [
            // Padding applied only to the rest of the content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/appbar_profile.png',
                        height: 53.h,
                        width: 53.w,
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        'Merril Kervin',
                        style: jost400(20.sp, Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 19.h),
                ],
              ),
            ),
            // Full-width black divider
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            // Remaining drawer items with consistent padding
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  DrawerItemsWidget(
                    text: 'Home',
                    image: 'assets/drawer/home.png',
                    onTap: () {
                      Navigator.pop(context); // Close the drawer first
                      final navBarState =
                      context.findAncestorStateOfType<AppNavBarState>();
                      navBarState?.navigateToPage(0); // Navigate to Home
                    },
                  ),

                ],
              ),
            ),
            // Full-width black divider
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  DrawerItemsWidget(
                    text: 'Mock Exams',
                    image: 'assets/drawer/mockExams.png',
                    onTap: () {
                   Get.to( MockExams());
                      // final navBarState =
                      // context.findAncestorStateOfType<AppNavBarState>();
                      // navBarState?.navigateToPage(2); // Navigate to Calendar
                    },
                  ),

                ],
              ),
            ),
            // Repeat for all other items...
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  DrawerItemsWidget(
                    text: 'Final Exams',
                    image: 'assets/drawer/finalExams.png',
                    onTap: () {
                      Get.to( FinalExams());
                      // final navBarState =
                      // context.findAncestorStateOfType<AppNavBarState>();
                      // navBarState?.navigateToPage(3); // Navigate to Profile
                    },
                  ),

                ],
              ),
            ),
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: DrawerItemsWidget(
                text: 'Purchases Exams',
                image: 'assets/drawer/purchasesExams.png',
                onTap: () {
                  Navigator.pop(context);
                        Get.to(PurchasedExams());
                },
              ),
            ),
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: DrawerItemsWidget(
                text: 'Transcations Reciepts',
                image: 'assets/drawer/transcation.png',
                onTap: () {
                  Navigator.pop(context);
                         Get.to(ShoppingCart());
                },
              ),
            ),
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: DrawerItemsWidget(
                text: 'Privacy Policy',
                image: 'assets/drawer/lock.png',
                onTap: () {
                  Navigator.pop(context);
                  //  Get.to(PrivacyPolicy());
                },
              ),
            ),
            Container(
              height: 1.h,
              color: Colors.black,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offAll(
                          LoginScreen()); // Clears the entire navigation stack
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 31.h,
                          width: 25.w,
                          child: Image.asset('assets/drawer/logout.png'),
                        ),
                        SizedBox(width: 20.w),
                        Text(
                          "Logout",
                          style: jost700(24.sp, Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.w),
                ],
              ),
            ),
            SizedBox(height: 60.h,)
          ],
        ),
      ),
    );
  }

}

class DrawerItemsWidget extends StatelessWidget {
  final String text;
  final String image;
  final void Function()? onTap;

  const DrawerItemsWidget(
      {super.key, required this.text, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h),
        child: Row(
          children: [
            Container(
              height: 32.h,
              width: 32.w,
              child: Image.asset(image), // Use Image.asset to display image
            ),
            SizedBox(width: 14.32.w),
            Text(
              text,
              style: jost600(20.sp, Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
