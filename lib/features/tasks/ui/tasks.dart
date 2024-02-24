import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/widgets/custom_app_bar.dart';
import 'package:ed_community/features/tasks/ui/widgets/task_card_widget.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<TaskCardWidget> tasks = [
      TaskCardWidget(
        profName: "Dr. Ali Mohammed",
        profImage: "assets/images/person.png",
        taskDescription:
            "A faucibus neque tortor volutpat diam consectetur adipiscing. Id augue in libero ac tincidunt scelerisque lobortis. Vitae orci dui congue volutpat porta porta sapien ac. Eget eget urna cursus dolor vitae turpis. Donec risus vulputate lorem est ornare quis duis hendrerit.",
        taskCourse: "Chemistry",
        endTime: DateTime.now(),
      )
    ];
    return Scaffold(
      appBar: CustomAppBar(
        context,
        'Tasks',
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
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return tasks[index];
              },
              itemCount: tasks.length,
            ),
          ),
        ),
      ),
    );
  }
}
