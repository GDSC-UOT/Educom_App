import 'package:ed_community/core/themes/color_manager.dart';
import 'package:flutter/material.dart';

class ShadowStyles {
  final Color? color;
  final double? spreadRadius;
  final double? blurRadius;
  final Offset? offset;
  ShadowStyles({
    this.color,
    this.spreadRadius,
    this.blurRadius,
    this.offset,
  });
  buttonShadow() => BoxShadow(
        color: color ?? ColorManager.primary.withOpacity(0.16),
        spreadRadius: spreadRadius ?? 0,
        blurRadius: blurRadius ?? 24,
        offset: offset ?? const Offset(0, 8), // changes position of shadow
      );
}
