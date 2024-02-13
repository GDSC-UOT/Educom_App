import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email",
            prefixIcon: Icon(
              Icons.email,
              size: 20.sp,
              color: ColorManager.secondaryBG,
            ),
          ),
          VerticalSpacer(space: 16),
          AppTextFormField(
            hintText: "Password",
            isObscureText: true,
            prefixIcon: Icon(
              Icons.key,
              size: 20.sp,
              color: ColorManager.secondaryBG,
            ),
          ),
          VerticalSpacer(space: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot password?",
              style: TextStyleManager.regular14px
                  .copyWith(color: ColorManager.primary),
            ),
          ),
        ],
      ),
    );
  }
}
