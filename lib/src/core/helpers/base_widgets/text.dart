import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;

  const AppText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.color,
    this.textDecoration,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      maxLines: maxLines ?? 5,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          decoration: textDecoration,
          overflow: TextOverflow.ellipsis,
          height: 1.2.h
      ),
    );
  }
}
