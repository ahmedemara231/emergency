import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/features/auth/otp/presentation/widgets/otp_form_with_button.dart';
import 'package:emergency/src/features/auth/otp/presentation/widgets/otp_header.dart';
import 'package:emergency/src/features/auth/otp/presentation/widgets/resend_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(
                  height: 43.h,
                ),
                const OtpHeader(),
                SizedBox(
                  height: 59.h,
                ),
                SvgPicture.asset(
                  Assets.imagesOtpImage,
                  height: 273.h,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const OtpFormWithButton(),
                const SizedBox(
                  height: 8,
                ),
                const ResendOtp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
