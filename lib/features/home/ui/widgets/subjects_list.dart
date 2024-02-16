import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectsList extends StatefulWidget {
  const SubjectsList({super.key});

  @override
  State<SubjectsList> createState() => _SubjectsListState();
}

class _SubjectsListState extends State<SubjectsList> {
  String selectedSubject = "Chemistry";

  final List<String> subjects = [
    "Chemistry",
    "Physics",
    "Biology",
    "Dental anatomy",
    "Chemistry2",
    "Phusics2",
    "Biology2",
    "Dental anatomy2",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: subjects.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedSubject = subjects[index];
                  });
                },
                child: Chip(
                  side: BorderSide(
                    color: Colors.white.withOpacity(0.03),
                    width: (selectedSubject == subjects[index]) ? 1 : 0,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  backgroundColor: (selectedSubject == subjects[index])
                      ? ColorManager.primary
                      : ColorManager.fieldColor,
                  label: Text(
                    subjects[index],
                    style: TextStyleManager.regular14px.copyWith(
                      color: (selectedSubject == subjects[index])
                          ? ColorManager.fieldColor
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
