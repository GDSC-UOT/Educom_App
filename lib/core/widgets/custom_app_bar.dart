import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSize CustomAppBar(BuildContext ctx, title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(70.h),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          ctx.pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyleManager.medium16px.copyWith(
          color: Colors.white,
        ),
      ),
    ),
  );
}
