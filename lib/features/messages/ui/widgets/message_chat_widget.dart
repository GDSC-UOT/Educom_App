import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageChatWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String? time;
  final int? newMessages;
  final bool? read;
  const MessageChatWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      this.time,
      this.newMessages,
      this.read});

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
              (time != null)
                  ? Text(time!,
                      style: TextStyleManager.regular12px.copyWith(
                        color: ColorManager.white25,
                      ))
                  : const SizedBox.shrink()
            ],
          ),
          trailing: (newMessages != null)
              ? Container(
                  height: 25.r,
                  width: 25.r,
                  decoration: BoxDecoration(
                    color: ColorManager.red500,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      newMessages.toString(),
                      style: TextStyleManager.regular12px.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : null,
          subtitle: Row(
            children: [
              read ?? false
                  ? (Icon(
                      Icons.done_all,
                      color: ColorManager.primary,
                      size: 16.r,
                    ))
                  : const SizedBox.shrink(),
              read ?? false ? const HorizontalSpacer(space: 5) : const SizedBox.shrink(),
              Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyleManager.regular12px.copyWith(
                  color: read ?? false
                      ? ColorManager.gray200
                      : ColorManager.white25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
