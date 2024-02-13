import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Full Name",
            prefixIcon: Icon(
              Icons.person,
              size: 20.sp,
              color: ColorManager.secondaryBG,
            ),
          ),
          const VerticalSpacer(space: 16),
          AppTextFormField(
            hintText: "Email",
            prefixIcon: Icon(
              Icons.email,
              size: 20.sp,
              color: ColorManager.secondaryBG,
            ),
          ),
          const VerticalSpacer(space: 16),
          AppTextFormField(
            hintText: "Phone Number",
            prefixIcon: Icon(
              Icons.phone,
              size: 20.sp,
              color: ColorManager.secondaryBG,
            ),
          ),
          const VerticalSpacer(space: 16),
          AppTextFormField(
            hintText: "Password",
            isObscureText: true,
            prefixIcon: Icon(
              Icons.key,
              size: 20.sp,
              color: ColorManager.secondaryBG,
            ),
          ),
        ],
      ),
    );
  }
}
