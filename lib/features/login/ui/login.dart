import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/main_button.dart';
import 'package:ed_community/features/login/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacer(space: 15),
              Center(
                child: SvgPicture.asset(
                  "assets/svgs/AppLogo.svg",
                  semanticsLabel: "App Logo",
                ),
              ),
              VerticalSpacer(space: 60),
              Text(
                "welcome again!",
                style: TextStyleManager.bold16px
                    .copyWith(color: ColorManager.white50),
              ),
              VerticalSpacer(space: 10),
              Text(
                "Please enter your login information for a unique and secure experience.",
                style: TextStyleManager.regular14px
                    .copyWith(color: ColorManager.white25),
              ),
              VerticalSpacer(space: 35),
              const LoginForm(),
              VerticalSpacer(space: 40),
              AppMainButton(
                text: "Login",
                onPressed: () {},
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(boxShadow: [
                 
                ]),
              ),
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
                      ),
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
