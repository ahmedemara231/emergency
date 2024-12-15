import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/widgets/account_done_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountDoneScreen extends StatelessWidget {
  const AccountDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldBackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 152.h,
              ),
              const AccountDoneContent(),
              const Spacer(),
              const AppTextButton(
                text: 'تخطى',
                // onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
