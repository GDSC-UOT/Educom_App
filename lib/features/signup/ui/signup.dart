import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/routing/routes.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/app_logo.dart';
import 'package:ed_community/core/widgets/main_button.dart';
import 'package:ed_community/features/signup/ui/widgets/signup_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacer(space: 15),
              const Center(
                child: AppLogo(),
              ),
              const VerticalSpacer(space: 30),
              Text(
                "Join our amazing learning community!",
                style: TextStyleManager.bold16px
                    .copyWith(color: ColorManager.white50),
              ),
              const VerticalSpacer(space: 10),
              Text(
                "Create your account now to begin your journey of communicating with your colleagues and teachers.",
                style: TextStyleManager.regular14px
                    .copyWith(color: ColorManager.white25),
              ),
              const VerticalSpacer(space: 32),
              const SignupForm(),
              const VerticalSpacer(space: 40),
              AppMainButton(
                text: "Sign up",
                onPressed: () {
                  context.pushNamed(Routes.home);
                },
              ),
              const Spacer(),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an Account? ",
                        style: TextStyleManager.regular14px
                            .copyWith(color: ColorManager.gray200),
                      ),
                      TextSpan(
                          text: "Log in",
                          style: TextStyleManager.medium14px
                              .copyWith(color: ColorManager.primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.pushReplacementNamed(Routes.login);
                            }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
