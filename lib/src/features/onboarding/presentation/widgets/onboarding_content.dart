import 'package:emergency/src/features/onboarding/data/data_source/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(this.model, {super.key});

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 272.h,
            child: SvgPicture.asset(
              model.imagePath,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            model.title,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
              color: HexColor('#333333'),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            model.body,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              color: HexColor('#333333'),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
