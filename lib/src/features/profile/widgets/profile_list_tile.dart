import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileListTile extends StatelessWidget {
  final String icon;
  final String title;
  final Function()? onTap;
  final Widget? trailing;

  const ProfileListTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 16.h,
      ),
      minTileHeight: 0,
      leading: SvgPicture.asset(
        icon,
        height: 32.h,
        width: 32.w,
      ),
      title: AppText(
        text: title,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: Constants.kNeutral900Color,
        textAlign: TextAlign.start,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
