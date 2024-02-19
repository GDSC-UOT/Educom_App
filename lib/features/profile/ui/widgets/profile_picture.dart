import 'package:ed_community/core/themes/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110.h,
          width: 110.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: const Image(
            image: AssetImage("assets/images/person.png"),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 8,
          right: 6,
          child: Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.camera_alt_rounded,
              size: 12.sp,
              color: ColorManager.fieldColor,
            ),
          ),
        ),
      ],
    );
  }
}
