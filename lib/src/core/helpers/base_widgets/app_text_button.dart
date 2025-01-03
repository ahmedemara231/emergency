import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.text,
      this.onTap,
      this.width,
      this.height,
      this.padding,
      this.color,
      this.textColor,
      this.border});

  final String text;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? textColor;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 380.w,
        height: height ?? 54.h,
        padding: padding ?? EdgeInsets.symmetric(vertical: 16.h),
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: border,
          color: color ?? Constants.appColor,
        ),
        child: Center(
          child: FittedBox(
            child: AppText(
              text: text,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: textColor ?? HexColor('#FFFFFF'),
            ),
          ),
        ),
      ),
    );
  }
}
