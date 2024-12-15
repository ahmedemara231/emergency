import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/features/auth/reset_password/presentation/widgets/reset_password_form_with_button.dart';
import 'package:emergency/src/features/auth/reset_password/presentation/widgets/reset_password_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = '';
    final otp = '';
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
                const ResetPasswordHeader(),
                SizedBox(
                  height: 57.h,
                ),
                SvgPicture.asset(
                  Assets.imagesResetPasswordImage,
                  height: 276.h,
                ),
                SizedBox(
                  height: 32.h,
                ),
                ResetPasswordFormWithButton(
                  email: email,
                  otp: otp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
