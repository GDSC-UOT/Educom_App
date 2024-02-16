import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/app_logo.dart';
import 'package:ed_community/core/widgets/text_form_field.dart';
import 'package:ed_community/features/home/ui/widgets/carousel_list.dart';
import 'package:ed_community/features/home/ui/widgets/papers_list.dart';
import 'package:ed_community/features/home/ui/widgets/subjects_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
                  child: Column(
                    children: [
                      AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        automaticallyImplyLeading: false,
                        leading: const AppLogo(),
                        leadingWidth: 32,
                        title: Text(
                          "EduCommunity",
                          style: TextStyleManager.regular14px,
                        ),
                        actions: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 55.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                color: ColorManager.fieldColor,
                                borderRadius: BorderRadius.circular(40.r),
                              ),
                              child: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const VerticalSpacer(
                        space: 16,
                      ),
                      const AppTextFormField(
                        hintText: "Search Anything",
                        prefixIcon: Icon(
                          Icons.search,
                          color: ColorManager.white25,
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpacer(space: 16),
                CarouselList(),
                const VerticalSpacer(space: 24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subject",
                        style: TextStyleManager.medium16px
                            .copyWith(color: ColorManager.white50),
                      ),
                      Text(
                        "See All",
                        style: TextStyleManager.medium14px
                            .copyWith(color: ColorManager.blue17),
                      ),
                    ],
                  ),
                ),
                const VerticalSpacer(space: 12),
                const Center(
                  child: SubjectsList(),
                ),
                const VerticalSpacer(space: 24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: PapersList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
