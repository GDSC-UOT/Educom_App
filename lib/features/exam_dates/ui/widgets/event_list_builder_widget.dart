import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/features/exam_dates/ui/widgets/event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/neat_and_clean_calendar_event.dart';

class EventListBuilderWidget extends StatelessWidget {
  const EventListBuilderWidget({super.key, required this.eventList});
  final List<NeatCleanCalendarEvent> eventList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(
            color: ColorManager.secondaryBG,
            width: 1,
          ),
        )),
        child: ListView.builder(
          itemCount: eventList.length,
          itemBuilder: (context, index) {
            return EventWidget(
              summary: eventList[index].summary,
              description: eventList[index].description,
              startDate: eventList[index].startTime,
            );
          },
        ),
      ),
    );
  }
}
