import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AppText(
        text: 'انشاء حساب',
        fontWeight: FontWeight.w500,
        fontSize: 24.sp,
        color: HexColor('#000000'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
