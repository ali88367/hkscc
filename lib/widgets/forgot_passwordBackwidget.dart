import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/colors.dart';
import '../const/images.dart';
import '../const/textstyle.dart';


class ForgetPasswordBackWidget extends StatelessWidget {
  const ForgetPasswordBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25.w),
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

                )
              ],
            ),
          ),
        ),
        SizedBox(height: 12.h,),
        Container(
          height: 2.h,
          width: double.infinity,
          color: Color.fromRGBO (188, 202, 214, 0.23),


        )
      ],
    );
  }
}
