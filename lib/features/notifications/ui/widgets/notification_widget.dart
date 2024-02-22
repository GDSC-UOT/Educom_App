import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String time;
  const NotificationWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.secondaryBG,
            width: 1,
          ),
        ),
      ),
      height: 75.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.r,
            backgroundColor: ColorManager.secondaryBG,
            backgroundImage: AssetImage(
              imageUrl,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyleManager.regular14px.copyWith(
                  color: ColorManager.white50,
                ),
              ),
              Text(time,
                  style: TextStyleManager.regular12px.copyWith(
                    color: ColorManager.white25,
                  ))
            ],
          ),
          subtitle: Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyleManager.regular12px.copyWith(
              color: ColorManager.white25,
            ),
          ),
        ),
      ),
    );
  }
}
