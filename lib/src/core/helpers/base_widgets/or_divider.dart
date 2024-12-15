import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Constants.kNeutral100Color,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Tajawal',
              height: 1.2.h,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Constants.kNeutral700Color,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Constants.kNeutral100Color,
          ),
        ),
      ],
    );
  }
}
