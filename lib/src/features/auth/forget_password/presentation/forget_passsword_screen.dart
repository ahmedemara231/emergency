import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/features/auth/forget_password/presentation/widgets/forget_password_form_with_button.dart';
import 'package:emergency/src/features/auth/forget_password/presentation/widgets/forget_password_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPassswordScreen extends StatelessWidget {
  const ForgetPassswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 43.h,
                ),
                const ForgetPasswordHeader(),
                SizedBox(
                  height: 59.h,
                ),
                SvgPicture.asset(
                  Assets.imagesForgetPasswordImage,
                  height: 273.h,
                ),
                SizedBox(
                  height: 48.h,
                ),
                const ForgetPasswordFormWithButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
