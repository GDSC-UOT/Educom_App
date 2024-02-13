import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  const AppTextFormField({
    super.key,
    this.suffixIcon,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.prefixIcon,
    this.backgroundColor,
    this.controller,
    this.inputTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: inputTextStyle ??
          TextStyleManager.regular14px.copyWith(color: ColorManager.white25),
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.w),
        filled: true,
        fillColor: backgroundColor ?? ColorManager.fieldColor,
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyleManager.regular14px.copyWith(
              color: ColorManager.white25,
            ),
        prefixIcon: prefixIcon,
        suffix: suffixIcon,
        labelStyle: TextStyleManager.regular14px.copyWith(
          color: ColorManager.white50,
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withOpacity(0.05)),
              borderRadius: BorderRadius.circular(100.r),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withOpacity(0.05)),
              borderRadius: BorderRadius.circular(100.r),
            ),
      ),
    );
  }
}
