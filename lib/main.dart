import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'exam_complete.dart';
import 'onboarding/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (_, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home:SplashScreen(),
              // initialBinding: UserBinding(),
            );
          }),
    );
  }
}
