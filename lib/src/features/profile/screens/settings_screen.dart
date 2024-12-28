import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_divider.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/profile/screens/change_password_screen.dart';
import 'package:emergency/src/features/profile/widgets/header_with_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 47.h,
            ),
            const HeaderWithBackButton(
              text: 'الاعدادات',
              gap: 107,
            ),
            SizedBox(
              height: 24.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.only(right: 24.w),
              leading: SvgPicture.asset(
                Assets.iconsLanguageIcon,
                height: 32.h,
                width: 32.w,
              ),
              title: AppText(
                text: 'اللغة',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Constants.kNeutral900Color,
                textAlign: TextAlign.start,
              ),
              onTap: () {
                _showLanguageOptionsBottomSheet(context);
              },
            ),
            const AppDivider(),
            ListTile(
              contentPadding: EdgeInsets.only(right: 24.w),
              leading: SvgPicture.asset(
                Assets.iconsPasswordIcon,
                height: 32.h,
                width: 32.w,
              ),
              title: AppText(
                text: 'كلمة المرور',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Constants.kNeutral900Color,
                textAlign: TextAlign.start,
              ),
              onTap: () {
                context.normalNewRoute(
                  const ChangePasswordScreen(),
                );
              },
            ),
            const AppDivider(),
            ListTile(
              contentPadding: EdgeInsets.only(right: 24.w),
              leading: SvgPicture.asset(
                Assets.iconsProfileIcon,
                height: 32.h,
                width: 32.w,
              ),
              title: AppText(
                text: 'حذف الحساب',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Constants.kNeutral900Color,
                textAlign: TextAlign.start,
              ),
              onTap: () {
                _showLanguageOptionsBottomSheet(context);
              },
            ),
            const AppDivider(),
          ],
        ),
      ),
    );
  }

  void _showLanguageOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding:
              EdgeInsets.only(top: 28.h, bottom: 24.h, right: 24.w, left: 24.h),
          height: 180.h,
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      Assets.iconsExitIcon,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  SizedBox(
                    width: 143.w,
                  ),
                  AppText(
                    text: 'اللغة',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: HexColor(
                      '#000000',
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: 'العربية',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#000000'),
                  ),
                  Checkbox(
                    value: true,
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: Constants.appColor,
                    checkColor: Constants.kPrimaryBGColor,
                    shape: const CircleBorder(),
                    side: BorderSide(
                      width: 8, // Ensures proper circular appearance
                      color: Constants.appColor,
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: 'English',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#000000'),
                  ),
                  Checkbox(
                    value: true,
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: Constants.appColor,
                    checkColor: Constants.kPrimaryBGColor,
                    shape: const CircleBorder(),
                    side: BorderSide(
                      width: 8, // Ensures proper circular appearance
                      color: Constants.appColor,
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showAccountDeleteBottomSheet(BuildContext context) {
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
                text: 'هل تريد حذف الحساب؟',
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
