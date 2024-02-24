import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/features/exam_dates/ui/widgets/event_list_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final List<NeatCleanCalendarEvent> eventList = [
    NeatCleanCalendarEvent(
      'MultiDay Event A',
      description: 'test desc',
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 10, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 12, 0),
    ),
    NeatCleanCalendarEvent(
      'Event X',
      description: 'test desc',
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 10, 30),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 11, 30),
    ),
    NeatCleanCalendarEvent(
      'Allday Event B',
      description: 'test desc',
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day - 2, 14, 30),
      endTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 17, 0),
    ),
  ];
  late DateTime selectedDate = DateTime.now();
  CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Calendar(
      startOnMonday: true,
      weekDays: const ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
      dayOfWeekStyle: TextStyleManager.medium16px.copyWith(
        color: ColorManager.gray200,
      ),
      eventsList: eventList,
      isExpanded: true,
      hideTodayIcon: true,
      expandableDateFormat: 'dd. MMMM yyyy',
      eventColor: ColorManager.red500,
      selectedColor: ColorManager.primary,
      todayColor: ColorManager.white50,
      defaultDayColor: Colors.white,
      onDateSelected: (value) {
        selectedDate = value;
      },
      selectedTodayColor: ColorManager.primary,
      defaultOutOfMonthDayColor: ColorManager.gray200,
      hideBottomBar: true,
      displayMonthTextStyle: TextStyleManager.medium16px.copyWith(
        color: Colors.white,
      ),
      eventListBuilder: (context, events) => EventListBuilderWidget(
          eventList: eventList
              .where(
                (element) =>
                    (element.startTime.year == selectedDate.year &&
                        element.startTime.month == selectedDate.month &&
                        element.startTime.day == selectedDate.day) ||
                    (element.startTime.isBefore(selectedDate) &&
                        element.endTime.isAfter(selectedDate)),
              )
              .toList()),
      isExpandable: false,
      showEvents: true,
    );
  }
}
