import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/routing/routes.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/app_logo.dart';
import 'package:ed_community/features/home/ui/widgets/navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration:
              BoxDecoration(gradient: ColorManager.linearGradientBackground),
          child: Padding(
            padding: EdgeInsets.only(left: 32.0.w, right: 28.w, top: 55.h),
            child: Column(
              children: [
                Row(
                  children: [
                    AppLogo(
                      height: 36.h,
                      width: 36.w,
                    ),
                    HorizontalSpacer(space: 16),
                    Text(
                      "EduCom",
                      style: TextStyleManager.regular14px.copyWith(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                VerticalSpacer(space: 32),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                ),
                VerticalSpacer(space: 16),
                const NavigationItem(
                    title: "Profile",
                    icon: Icons.person,
                    route: Routes.profile),
                const NavigationItem(
                    title: "Notifications",
                    icon: Icons.notifications,
                    route: Routes.notifications),
                const NavigationItem(
                    title: "Message",
                    icon: Icons.chat_bubble_rounded,
                    route: Routes.chat),
                const NavigationItem(
                    title: "Task", icon: Icons.task, route: Routes.tasks),
                const NavigationItem(
                    title: "Weekday schedule",
                    icon: Icons.book,
                    route: Routes.examsDate),
                const NavigationItem(
                    title: "Vacation Request",
                    icon: Icons.event_busy,
                    route: Routes.vacationRequest),
                Spacer(),
                NavigationItem(
                    title: "Log Out", icon: Icons.logout, onTap: () {}),
                VerticalSpacer(space: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
