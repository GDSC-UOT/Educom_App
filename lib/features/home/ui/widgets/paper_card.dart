import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaperCard extends StatelessWidget {
  const PaperCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ColorManager.fieldColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Colors.white.withOpacity(0.03),
          width: 1,
        ),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          foregroundImage: AssetImage("assets/images/paperIcon.png"),
          backgroundColor: ColorManager.secondaryBG,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Chemistry",
            style: TextStyleManager.medium14px.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        subtitle: Text(
          "5 MB",
          style: TextStyleManager.regular12px.copyWith(
            color: ColorManager.gray200,
          ),
        ),
      ),
    );
  }
}
