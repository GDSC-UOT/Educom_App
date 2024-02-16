import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? route;
  final void Function()? onTap;
  const NavigationItem({
    super.key,
    required this.title,
    required this.icon,
    this.route,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap ??
          () {
            context.pop();
            context.pushNamed(route!);
          },
      leading: Icon(
        icon,
        color: ColorManager.secondaryBG,
      ),
      title: Text(
        title,
        style: TextStyleManager.regular14px.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
