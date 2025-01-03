import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class UserImageWithName extends StatelessWidget {
  const UserImageWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 112.w,
              height: 112.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: Constants.scaffoldBackGroundColor,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3.w,
                  color: Constants.appColor,
                ),
              ),
              child: FittedBox(
                child: Image.asset(
                  Assets.imagesProfileImage,
                ),
              ),
            ),
            Positioned(
              bottom: -10,
              left: 5,
              child: IconButton(
                onPressed: () {
                  _showImageOptionsBottomSheet(context);
                },
                icon: SvgPicture.asset(
                  Assets.iconsCameraIcon,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        AppText(
          text: 'منة ناصف',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: Constants.kNeutral900Color,
        ),
      ],
    );
  }

  void _showImageOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 24.h),
          height: 206.h,
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
                    width: 100.w,
                  ),
                  AppText(
                    text: 'الصورة الشخصية',
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
              ListTile(
                minTileHeight: 24.h,
                contentPadding: EdgeInsets.zero,
                leading: AppText(
                  text: 'الكاميرا',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: HexColor(
                    '#000000',
                  ),
                ),
                trailing: SvgPicture.asset(
                  Assets.iconsCameraFilledIcon,
                  height: 24.h,
                  width: 24.w,
                ),
                onTap: () {
                  //////////////////////
                },
              ),
              const Spacer(
                flex: 1,
              ),
              ListTile(
                minTileHeight: 24.h,
                contentPadding: EdgeInsets.zero,
                leading: AppText(
                  text: 'المعرض',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: HexColor(
                    '#000000',
                  ),
                ),
                trailing: SvgPicture.asset(
                  Assets.iconsGalleryIcon,
                  height: 24.h,
                  width: 24.w,
                ),
                onTap: () {
                  //////////////////
                },
              ),
              const Spacer(
                flex: 1,
              ),
              ListTile(
                minTileHeight: 24.h,
                contentPadding: EdgeInsets.zero,
                leading: AppText(
                  text: 'حذف الصورة',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: HexColor(
                    '#000000',
                  ),
                ),
                trailing: SvgPicture.asset(
                  Assets.iconsDeleteIcon,
                  height: 24.h,
                  width: 24.w,
                ),
                onTap: () {
                  ///////////////////////
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
