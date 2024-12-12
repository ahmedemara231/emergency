import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 380.w,
        height: 54.h,
        padding: EdgeInsets.symmetric(vertical: 15.h),
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: HexColor('#0071CD'),
        ),
        child: Center(
          child: AppText(
            text: text,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            color: HexColor('#FFFFFF'),
          ),
        ),
      ),
    );
  }
}
