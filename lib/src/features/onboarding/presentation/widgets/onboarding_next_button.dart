import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/ring_indicator_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton(
      {super.key, this.onTap, required this.progress, required this.fillColor});
  final void Function()? onTap;
  final double progress;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 58.w,
        height: 58.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: RingIndicatorPainter(
                color: fillColor,
                progress: progress,
              ),
              size: const Size(58, 58),
            ),
            Container(
              width: 42.h,
              height: 42.h,
              decoration: BoxDecoration(
                color: HexColor('#0071CD'),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SizedBox(
                  height: 16.h,
                  width: 16.w,
                  child: SvgPicture.asset(
                    Assets.iconsGoNextArrow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
