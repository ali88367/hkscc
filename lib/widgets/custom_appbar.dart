import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../navbar_controller.dart';

class CustomAppBar extends StatelessWidget {

  final NavBarController navBarController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Container(
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
        // Ensures the blur effect is within the container bounds
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 21.7, // Horizontal blur radius
            sigmaY: 21.7, // Vertical blur radius
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent, // Ensures transparency for blur
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Menu Icon
                  GestureDetector(
                    onTap: () {
                      navBarController.openDrawer(context);
                      print("Menu tapped");
                    },
                    child: Image.asset(
                      'assets/images/drawer.png', // Replace with your logo file
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),

                  // Center Logo
                  Image.asset(
                    'assets/images/HkLogo.png', // Replace with your logo file
                    height: 65.h,
                    width: 65.w,
                  ),

                  // Profile Image
                  GestureDetector(
                    onTap: () {
                      print("Profile tapped");
                    },
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/images/appbar_profile.png'),
                      radius: 22.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
