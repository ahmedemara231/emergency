import 'package:emergency/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.h,
        height: 40.h,
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                color: HexColor('#000000').withOpacity(0.1),
                blurRadius: 15.r,
                spreadRadius: 0.w),
          ],
        ),
        child: Center(
          child: SizedBox(
            width: 18.w,
            height: 18.h,
            child: SvgPicture.asset(Assets.iconsGoBackArrow),
          ),
        ),
      ),
    );
  }
}
