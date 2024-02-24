import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectCard extends StatelessWidget {
  final String title;
  final Color color;
  const SubjectCard({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: LinearGradient(colors: [
          color.withOpacity(0.16),
          color.withOpacity(0.05),
          color.withOpacity(0)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyleManager.medium12px.copyWith(color: color),
        ),
      ),
    );
  }
}
