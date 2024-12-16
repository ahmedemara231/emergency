import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing dialog by tapping outside
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 57.w, vertical: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                text: 'تهانينا',
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
                color: HexColor('#1F1F23'),
              ),
              SizedBox(height: 31.h),
              AppText(
                text: 'تم انشاء كلمة مرور جديدة بنجاح!',
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
                color: HexColor('#1F1F23'),
              ),
              SizedBox(height: 31.h),
              AppTextButton(
                text: 'تخطى',
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    },
  );
}
