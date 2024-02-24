import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/custom_app_bar.dart';
import 'package:ed_community/core/widgets/main_button.dart';
import 'package:ed_community/features/profile/ui/widgets/profile_details.dart';
import 'package:ed_community/features/profile/ui/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: CustomAppBar(context, "Profile")),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0.w, vertical: 40.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalSpacer(space: 40),
                  const ProfilePicture(),
                  const VerticalSpacer(space: 16),
                  Text(
                    "Maryam Moayyad",
                    style: TextStyleManager.medium14px.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const VerticalSpacer(space: 32),
                  const ProfileDetails(),
                  const VerticalSpacer(space: 120),
                  AppMainButton(text: "Save", onPressed: () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
