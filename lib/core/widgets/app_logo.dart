import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxFit? fit;
  const AppLogo({super.key, this.width, this.height, this.fit});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svgs/AppLogo.svg",
      width: width,
      height: height,
      semanticsLabel: "App Logo",
      fit: fit ?? BoxFit.contain,
    );
  }
}
