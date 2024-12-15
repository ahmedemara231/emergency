import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AppText(
        text: 'نسيان كلمة المرور',
        fontWeight: FontWeight.w500,
        fontSize: 24.sp,
        color: Constants.kNeutral900Color,
        textAlign: TextAlign.center,
      ),
    );
  }
}
