import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendOtp extends StatelessWidget {
  const ResendOtp({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppText(
        text: 'اعادة ارسال الرمز؟',
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: Constants.appColor,
      ),
    );
  }
}
