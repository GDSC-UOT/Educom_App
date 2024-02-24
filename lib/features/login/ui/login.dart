import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/routing/routes.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/app_logo.dart';
import 'package:ed_community/core/widgets/main_button.dart';
import 'package:ed_community/features/login/ui/widgets/login_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpacer(space: 15),
                const Center(
                  child: AppLogo(),
                ),
                const VerticalSpacer(space: 60),
                Text(
                  "welcome again!",
                  style: TextStyleManager.bold16px
                      .copyWith(color: ColorManager.white50),
                ),
                const VerticalSpacer(space: 10),
                Text(
                  "Please enter your login information for a unique and secure experience.",
                  style: TextStyleManager.regular14px
                      .copyWith(color: ColorManager.white25),
                ),
                const VerticalSpacer(space: 35),
                const LoginForm(),
                const VerticalSpacer(space: 40),
                AppMainButton(
                  text: "Login",
                  onPressed: () {
                    context.pushNamed(Routes.home);
                  },
                ),
                const VerticalSpacer(space: 120),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyleManager.regular14px
                              .copyWith(color: ColorManager.gray200),
                        ),
                        TextSpan(
                            text: "Sign up",
                            style: TextStyleManager.medium14px
                                .copyWith(color: ColorManager.primary),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.pushNamed(Routes.signup);
                              }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
