import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AppText(
        text: 'الملف الشخصى',
        fontWeight: FontWeight.w500,
        fontSize: 24.sp,
        color: Constants.kNeutral900Color,
        textAlign: TextAlign.center,
      ),
    );
  }
}
