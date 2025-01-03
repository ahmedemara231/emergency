import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/or_divider.dart';
import 'package:emergency/src/core/helpers/base_widgets/social_media_buttons.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/widgets/have_account_question_text.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/widgets/sign_up_form_with_button.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/widgets/sign_up_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackGroundColor,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(
                  height: 43.h,
                ),
                const SignUpHeader(),
                SizedBox(
                  height: 32.h,
                ),
                const SignUpFormWithButton(),
                SizedBox(
                  height: 8.h,
                ),
                const HaveAccountQuestionText(),
                SizedBox(
                  height: 34.h,
                ),
                const OrDivider(
                  text: 'او استمر باستخدام',
                ),
                SizedBox(
                  height: 24.h,
                ),
                const SocialMediaButtons(),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
