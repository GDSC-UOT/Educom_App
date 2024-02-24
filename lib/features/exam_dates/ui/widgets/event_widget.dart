import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class EventWidget extends StatelessWidget {
  final String summary;
  final String description;
  final DateTime startDate;

  const EventWidget( {super.key, required this.summary, required this.description, required this.startDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h, left: 22.w, right: 22.w),
      decoration: BoxDecoration(
        color: ColorManager.fieldColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Colors.white.withOpacity(0.03),
          width: 1,
        ),
      ),
      child: ListTile(
        title: Text(
          summary,
          style: TextStyleManager.regular12px.copyWith(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
         description,
          style: TextStyleManager.regular12px
              .copyWith(color: ColorManager.primary),
        ),
        trailing: Text(
          DateFormat.jm().format(startDate),
          style: TextStyleManager.regular12px.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
