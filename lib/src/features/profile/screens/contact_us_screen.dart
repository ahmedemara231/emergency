import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_divider.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/profile/widgets/header_with_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
              text: 'تواصل معنا',
              gap: 90,
            ),
            SizedBox(
              height: 24.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.only(right: 24.w),
              leading: SvgPicture.asset(
                Assets.iconsCallUs,
                height: 24.h,
                width: 24.w,
              ),
              title: AppText(
                text: 'اتصل بنا',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: HexColor('#000E1A'),
                textAlign: TextAlign.start,
              ),
              onTap: () {},
            ),
            const AppDivider(),
            ListTile(
              contentPadding: EdgeInsets.only(right: 24.w),
              minVerticalPadding: 24.h,
              leading: SvgPicture.asset(
                Assets.iconsMessage,
                height: 24.h,
                width: 24.w,
              ),
              title: AppText(
                text: 'ارسل لنا',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: HexColor('#000E1A'),
                textAlign: TextAlign.start,
              ),
              onTap: () {},
            ),
            const AppDivider(),
          ],
        ),
      ),
    );
  }
}
