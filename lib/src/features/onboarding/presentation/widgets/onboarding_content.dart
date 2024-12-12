import 'package:emergency/src/core/helpers/base_widgets/text.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 272.h,
          child: SvgPicture.asset(
            model.imagePath,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 32.87.h,
        ),
        AppText(
          text: model.title,
          fontWeight: FontWeight.w700,
          fontSize: 24.sp,
          color: HexColor('#333333'),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8.h,
        ),
        AppText(
          text: model.body,
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
          color: HexColor('#333333'),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
