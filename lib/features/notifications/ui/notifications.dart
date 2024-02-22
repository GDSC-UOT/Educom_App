import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/features/notifications/ui/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Notifications",
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
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return const NotificationWidget(
                title: "Dr. Ali Hassan",
                subtitle:
                    "Thursday's exam date has been postponsed until further notice",
                imageUrl: "assets/images/person.png",
                time: "1hr",
              );
            },
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
