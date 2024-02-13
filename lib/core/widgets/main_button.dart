import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/shadows.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMainButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;

  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final BoxShadow? boxShadow;
  final Function() onPressed;
  const AppMainButton({
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
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 60.h,
      decoration: BoxDecoration(
        boxShadow: [
          boxShadow ?? ShadowStyles().buttonShadow(),
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? ColorManager.primary),
          padding: MaterialStateProperty.all(
            padding ?? EdgeInsets.symmetric(vertical: 20.h, horizontal: 32.w),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(100.r),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              TextStyleManager.medium16px
                  .copyWith(color: ColorManager.fieldColor),
        ),
      ),
    );
  }
}
