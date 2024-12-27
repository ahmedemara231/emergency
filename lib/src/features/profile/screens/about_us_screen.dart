import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/features/profile/widgets/about_us_text.dart';
import 'package:emergency/src/features/profile/widgets/header_with_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 51.h,
            ),
            const HeaderWithBackButton(
              text: 'معلومات عنا',
              gap: 88,
            ),
            SizedBox(
              height: 160.h,
              child: SvgPicture.asset(Assets.imagesLogo),
            ),
            SizedBox(
              height: 20.h,
            ),
            const AboutUsText(),
          ],
        ),
      ),
    );
  }
}
