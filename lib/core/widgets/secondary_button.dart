import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSecondaryButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;

  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final BoxShadow? boxShadow;
  final Function() onPressed;
  const AppSecondaryButton({
    super.key,
    required this.text,
    this.textStyle,
    this.borderRadius,
    this.padding,
    this.backgroundColor,
    required this.onPressed,
    this.height,
    this.width,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 60.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? ColorManager.fieldColor),
          padding: MaterialStateProperty.all(
            padding ?? EdgeInsets.symmetric(vertical: 20.h, horizontal: 32.w),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: backgroundColor ?? ColorManager.primary,
                width: 2,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(100.r),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              TextStyleManager.medium16px.copyWith(color: ColorManager.primary),
        ),
      ),
    );
  }
}
