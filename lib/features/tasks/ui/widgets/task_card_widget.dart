import 'package:ed_community/core/themes/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskCardWidget extends StatelessWidget {
  final String profName;
  final String profImage;

  final String taskDescription;
  final String taskCourse;
  final DateTime endTime;

  const TaskCardWidget(
      {super.key,
      required this.profName,
      required this.profImage,
      required this.taskDescription,
      required this.taskCourse,
      required this.endTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ColorManager.fieldColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          width: 1,
          color: Colors.white.withOpacity(0.03),
        ),
      ),
    );
  }
}
