import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const/colors.dart';

class CustomTextField1 extends StatefulWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final String? obscuringCharacter;
  final double hintTextSize;
  final Color fillColor;
  final double borderRadius;
  final Color? borderColor;
  final double borderWidth;

  CustomTextField1({
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.obscuringCharacter,
    this.hintTextSize = 14,
    this.fillColor = textfieldColor,
    this.borderRadius = 13.31,
    this.borderColor,
    this.borderWidth = 1.0,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField1> {
  late bool _obscureText;
  late String? _obscuringCharacter;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    _obscuringCharacter = widget.obscuringCharacter;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 47.h,
      decoration: BoxDecoration(
        color: widget.fillColor,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColor ?? Colors.transparent,
          width: widget.borderWidth,
        ),
      ),
      child: TextField(
        obscureText: _obscureText,
        obscuringCharacter: _obscuringCharacter ?? '*',
        style: TextStyle(color: Color.fromRGBO(19, 64, 100, 1), fontSize: 12.sp),
        decoration: InputDecoration(
          filled: false,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color.fromRGBO(19, 64, 100, 1),
            fontWeight: FontWeight.w400,
            fontSize: widget.hintTextSize,
            fontFamily: 'jost',
          ),
          prefixIcon: widget.prefixIcon != null
              ? Icon(
            widget.prefixIcon,
            size: 16.sp,
            color: Color.fromRGBO(19, 64, 100, 1),

          )
              : null,
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
            icon: Icon(
              size: 15.sp,
              _obscureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
              color: Color.fromRGBO(19, 64, 100, 1),
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
        ),
      ),
    );
  }
}