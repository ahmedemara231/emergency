import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AppText(
        text: 'تسجيل الدخول',
        fontWeight: FontWeight.w500,
        fontSize: 24.sp,
        color: HexColor('#000000'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
