import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: "Full Name",
          prefixIcon: Icon(
            Icons.person,
            color: ColorManager.secondaryBG,
          ),
        ),
        VerticalSpacer(space: 16),
        AppTextFormField(
          hintText: "Email",
          prefixIcon: Icon(
            Icons.email,
            color: ColorManager.secondaryBG,
          ),
        ),
        VerticalSpacer(space: 16),
        AppTextFormField(
          hintText: "Number",
          hintStyle: TextStyleManager.regular14px.copyWith(
            color: ColorManager.white25,
          ),
          prefixIcon: Icon(
            Icons.phone,
            color: ColorManager.secondaryBG,
          ),
        ),
      ],
    );
  }
}
