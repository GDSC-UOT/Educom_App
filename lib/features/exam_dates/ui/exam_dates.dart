import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/widgets/custom_app_bar.dart';
import 'package:ed_community/features/exam_dates/ui/widgets/calendar_widget.dart';
import 'package:flutter/material.dart';

class ExamDatesScreen extends StatefulWidget {
  const ExamDatesScreen({super.key});

  @override
  State<ExamDatesScreen> createState() => _ExamDatesScreenState();
}

class _ExamDatesScreenState extends State<ExamDatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, "Exam Date"),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CalendarWidget(),
        )),
      ),
    );
  }
}
