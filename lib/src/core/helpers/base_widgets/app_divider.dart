import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final double? height;
  final Color? color;
  final double? indent;
  const AppDivider({
    super.key,
    this.height,
    this.color,
    this.indent,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 1,
      color: Constants.kNeutral100Color,
      indent: indent,
    );
  }
}
