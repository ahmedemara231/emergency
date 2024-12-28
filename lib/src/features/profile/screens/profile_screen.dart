import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/features/profile/screens/edit_profile_screen.dart';
import 'package:emergency/src/features/profile/widgets/profile_header.dart';
import 'package:emergency/src/features/profile/widgets/profile_menu.dart';
import 'package:emergency/src/features/profile/widgets/user_image_with_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 51.h,
              ),
              const ProfileHeader(),
              SizedBox(
                height: 32.h,
              ),
              const UserImageWithName(),
              const SizedBox(
                height: 10,
              ),
              AppTextButton(
                padding: EdgeInsets.symmetric(vertical: 11.h),
                text: '  تعديل بياناتى',
                width: 124.w,
                height: 41.h,
                onTap: () {
                  context.normalNewRoute(
                    const EditProfileScreen(),
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              const ProfileMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
