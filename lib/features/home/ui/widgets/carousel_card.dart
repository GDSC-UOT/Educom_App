import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String subject;
  const CarouselCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.subject});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorManager.primary.withOpacity(0.3),
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          Positioned(
            bottom: 16.h,
            left: 16.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyleManager.medium14px
                        .copyWith(color: Colors.white)),
                const VerticalSpacer(space: 8),
                SizedBox(
                  width: 210.w,
                  child: Text(
                    description,
                    style: TextStyleManager.regular14px
                        .copyWith(color: ColorManager.gray100),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.w,
            top: 16.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorManager.primary.withOpacity(0.16),
                    ColorManager.primary.withOpacity(0.08),
                    ColorManager.primary.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(
                  color: ColorManager.primary.withOpacity(0.08),
                  width: 1,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Center(
                child: Text(
                  subject,
                  style: TextStyleManager.regular14px
                      .copyWith(color: ColorManager.primary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
