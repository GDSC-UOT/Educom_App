import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/features/tasks/ui/widgets/subject_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TaskCardWidget extends StatelessWidget {
  final String profName;
  final String profImage;

  final String taskDescription;
  final String taskCourse;
  final Color taskColor;
  final DateTime endTime;

  const TaskCardWidget(
      {super.key,
      required this.profName,
      required this.profImage,
      required this.taskDescription,
      required this.taskCourse,
      required this.endTime,
      required this.taskColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        height: 210.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorManager.fieldColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            width: 1,
            color: Colors.white.withOpacity(0.03),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profImage),
                      radius: 20.r,
                    ),
                    const HorizontalSpacer(space: 10),
                    Text(
                      profName,
                      style: TextStyleManager.medium14px,
                    ),
                  ],
                ),
                SubjectCard(
                  title: taskCourse,
                  color: taskColor,
                ),
              ],
            ),
            const VerticalSpacer(space: 16),
            Text(
              taskDescription,
              style: TextStyleManager.regular12px
                  .copyWith(color: ColorManager.white25),
            ),
            const VerticalSpacer(space: 24),
            Divider(
              height: 1.h,
              color: ColorManager.secondaryBG,
            ),
            const VerticalSpacer(space: 8),
            Text(
              "End time ${DateFormat("yyyy.M.dd").format(endTime)}",
              style: TextStyleManager.regular10px
                  .copyWith(color: ColorManager.white25),
            )
          ],
        ),
      ),
    );
  }
}
