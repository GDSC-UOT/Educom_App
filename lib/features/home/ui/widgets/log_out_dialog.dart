import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/main_button.dart';
import 'package:ed_community/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      backgroundColor: ColorManager.fieldColor,
      child: Container(
        height: 255.h,
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Log out",
                style:
                    TextStyleManager.medium14px.copyWith(color: Colors.white)),
            const VerticalSpacer(space: 20),
            Text(
              "Are you sure you want to log out?",
              style: TextStyleManager.regular14px.copyWith(color: Colors.white),
            ),
            const VerticalSpacer(space: 24),
            AppMainButton(
                text: "Log Out",
                onPressed: () {
                  context.pop();
                }),
            const VerticalSpacer(space: 16),
            AppSecondaryButton(
                text: "Cancel",
                onPressed: () {
                  context.pop();
                })
          ],
        ),
      ),
    );
  }
}
