import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_divider.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/profile/screens/about_us_screen.dart';
import 'package:emergency/src/features/profile/screens/contact_us_screen.dart';
import 'package:emergency/src/features/profile/screens/settings_screen.dart';
import 'package:emergency/src/features/profile/widgets/profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileListTile(
          icon: Assets.iconsAboutUsIcon,
          title: 'معلومات عنا',
          onTap: () {
            context.normalNewRoute(
              const AboutUsScreen(),
            );
          },
        ),
        const AppDivider(),
        ProfileListTile(
          icon: Assets.iconsLogoutIcon,
          title: 'تسجيل الخروج',
          onTap: () {
            _showProfileImageOptionsBottomSheet(context);
          },
        ),
        const AppDivider(),
        ProfileListTile(
          icon: Assets.iconsDarkModeIcon,
          title: 'الوضع الليلى',
          trailing: Switch(
            value: false,
            onChanged: (value) {},
            activeColor: Constants.appColor,
            thumbIcon: WidgetStateProperty.all(const Icon(null)),
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: HexColor('#787880').withOpacity(0.16),
            trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
          ),
          // onTap: (){},
        ),
        const AppDivider(),
        ProfileListTile(
          icon: Assets.iconsContactUsIcon,
          title: 'تواصل معنا',
          onTap: () {
            context.normalNewRoute(
              const ContactUsScreen(),
            );
          },
        ),
        const AppDivider(),
        ProfileListTile(
          icon: Assets.iconsSettingsIcon,
          title: 'الاعدادات',
          onTap: () {
            context.normalNewRoute(
              const SettingsScreen(),
            );
          },
        ),
        const AppDivider(),
      ],
    );
  }

  void _showProfileImageOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 82.w, vertical: 42.h),
          height: 180.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: 'هل تريد تسجيل الخروج؟',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: HexColor('#000E1A'),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  AppTextButton(
                    text: 'نعم',
                    width: 124.w,
                    height: 44.h,
                    padding: EdgeInsets.symmetric(vertical: 12.5.h),
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  AppTextButton(
                    text: 'لا',
                    color: HexColor('#FCFDFF'),
                    textColor: Constants.appColor,
                    width: 124.w,
                    height: 44.h,
                    padding: EdgeInsets.symmetric(vertical: 10.5.h),
                    border: Border.all(
                      width: 2,
                      color: Constants.appColor,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
