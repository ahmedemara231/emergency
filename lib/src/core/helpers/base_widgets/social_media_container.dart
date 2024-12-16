import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SocialMediaContainer extends StatelessWidget {
  final String iconImage;
  final void Function()? onTap;

  const SocialMediaContainer({
    super.key,
    required this.iconImage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Constants.kNeutral500Color,
          boxShadow: [
            BoxShadow(
                offset: Offset(0.w, 3.h),
                color: HexColor('#000000').withOpacity(0.1),
                blurRadius: 6.1.r,
                spreadRadius: 0.w),
          ],
        ),
        child: Center(
          child: SizedBox(
            width: 24.w,
            height: 24.h,
            child: SvgPicture.asset(iconImage),
          ),
        ),
      ),
    );
  }
}
