import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/or_divider.dart';
import 'package:emergency/src/core/helpers/base_widgets/social_media_buttons.dart';
import 'package:emergency/src/features/auth/login/presentation/widgets/have_account_question_text.dart';
import 'package:emergency/src/features/auth/login/presentation/widgets/login_form_with_button.dart';
import 'package:emergency/src/features/auth/login/presentation/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const LoginHeader(),
                SizedBox(
                  height: 32.h,
                ),
                const LoginFormWithButton(),
                const SizedBox(
                  height: 10,
                ),
                const HaveAccountQuestionText(),
                SizedBox(
                  height: 32.h,
                ),
                const OrDivider(
                  text: 'او استمر باستخدام',
                ),
                SizedBox(
                  height: 24.h,
                ),
                const SocialMediaButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
