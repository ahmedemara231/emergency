import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotsIndicator extends StatelessWidget {
  const OnboardingDotsIndicator(
      {super.key, required this.controller, required this.length});
  final PageController controller;
  final int length;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: length,
      effect: ExpandingDotsEffect(
        activeDotColor: HexColor('#0071CD'),
        dotHeight: 8.h,
        dotWidth: 8.w,
        expansionFactor: 3,
        spacing: 8.w,
        dotColor: HexColor('#99D1FF'),
      ),
    );
  }
}
