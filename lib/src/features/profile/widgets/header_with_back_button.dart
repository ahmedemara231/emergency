import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/profile/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWithBackButton extends StatelessWidget {
  const HeaderWithBackButton(
      {super.key, required this.text, required this.gap, this.padding});

  final String text;
  final double gap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(right: 24.w),
      child: Row(
        children: [
          CustomBackButton(
            onTap: Navigator.of(context).pop,
          ),
          SizedBox(
            width: gap.w,
          ),
          AppText(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: 24.sp,
            color: Constants.kNeutral900Color,
          ),
        ],
      ),
    );
  }
}
