import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/screens/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HaveAccountQuestionText extends StatelessWidget {
  const HaveAccountQuestionText({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'ليس لديك حساب؟ ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: HexColor('#4D4D4D'),
                ),
              ),
              TextSpan(
                text: 'انشئ حساب',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Constants.appColor,
                ),
                recognizer: TapGestureRecognizer()..onTap =
                    () => context.normalNewRoute(const SignUpScreen()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
