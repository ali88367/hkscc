import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/user_controller.dart';


import '../../const/images.dart';
import 'Drawer/drawer.dart';
import 'calendar_screen.dart';
import 'const/colors.dart';
import 'exams.dart';
import 'favorites.dart';
import 'home_screen.dart';
import 'navbar_controller.dart';
class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => AppNavBarState();
}

class AppNavBarState extends State<AppNavBar> {
  final UserController userVM = Get.put(UserController());
  final _pageController = PageController(initialPage: 0);
  final _controller = NotchBottomBarController(index: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final NavBarController navBarController = Get.put(NavBarController());

  void navigateToPage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
    _controller.jumpTo(pageIndex); // Update selected item in bottom bar
  }
  @override
  Widget build(BuildContext context) {
    bool isIpad = MediaQuery.of(context).size.width > 600;
    double screenHeight = MediaQuery.of(context).size.height;
    double iconHeight = screenHeight * 0.05;
    double iconScale = iconHeight / 20;

    List<Widget> bottomBarPages = [
      HomeScreen(),
      Favorites(),
      Exams(),
      CalendarScreen()

    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: navBarController.scaffoldKey,
      drawer: const MyDrawer(),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length,
              (index) => bottomBarPages[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        showBlurBottomBar: false,
        showShadow: false,
        itemLabelStyle: TextStyle(
          color:  Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: isIpad ? 5.sp : 8.sp,
        ),
        blurFilterY: 10,
        blurFilterX: 10,
        notchBottomBarController: _controller,
        notchColor: redColor,
        color: redColor,
        showLabel: true,
        shadowElevation: 0,
        kBottomRadius: 15.0,
        bottomBarWidth: 100.w,
        bottomBarHeight: 11.h,
        removeMargins: false,
        durationInMilliSeconds: 300,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Image.asset(home),
            activeItem: Image.asset(home, fit: BoxFit.contain),
            itemLabel: 'Home'.tr,
          ),
          BottomBarItem(
            inActiveItem: Image.asset(favorites),
            activeItem: Image.asset(favorites, fit: BoxFit.contain),
            itemLabel: 'Favorites'.tr,
          ),
          BottomBarItem(
            inActiveItem: Image.asset(exams),
            activeItem: Image.asset(exams, fit: BoxFit.contain),
            itemLabel: 'Exams'.tr,
          ),
          BottomBarItem(
            inActiveItem: Image.asset(schedual),
            activeItem: Image.asset(schedual, fit: BoxFit.contain),
            itemLabel: 'Schedual'.tr,
          ),
        ],
        onTap: (index) {
          navigateToPage(index); // Use the public `navigateToPage` method
        },
        kIconSize: 19.sp,
      ),
    );
  }
}

