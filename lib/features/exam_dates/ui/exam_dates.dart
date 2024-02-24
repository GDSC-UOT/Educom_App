import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Exam Date",
          style: TextStyleManager.medium16px.copyWith(
            color: Colors.white,
          ),
        ),
      ),
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
