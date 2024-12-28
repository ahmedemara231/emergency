import 'package:emergency/src/features/profile/widgets/change_password_form_with_button.dart';
import 'package:emergency/src/features/profile/widgets/header_with_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: 51.h,
              ),
              const HeaderWithBackButton(
                text: 'تغيير كلمة المرور',
                padding: EdgeInsets.zero,
                gap: 70,
              ),
              SizedBox(
                height: 32.h,
              ),
              const ChangePasswordFormWithButton(),
            ],
          ),
        ),
      ),
    );
  }
}
