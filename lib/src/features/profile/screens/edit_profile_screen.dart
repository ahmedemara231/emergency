import 'package:emergency/src/features/profile/widgets/edit_profile_form_with_button.dart';
import 'package:emergency/src/features/profile/widgets/header_with_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              const HeaderWithBackButton(
                text: 'تعديل بياناتى',
                gap: 80,
              ),
              SizedBox(
                height: 32.h,
              ),
              const EditProfileFormWithButton(),
            ],
          ),
        ),
      ),
    );
  }
}
