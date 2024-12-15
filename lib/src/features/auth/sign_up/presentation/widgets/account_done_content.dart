import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AccountDoneContent extends StatelessWidget {
  const AccountDoneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 143.w,
          height: 143.h,
          child: SvgPicture.asset(
            Assets.imagesCircleButtonWithCheckMark,
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        AppText(
          text: 'تم انشاء حساب بنجاح',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: Constants.kNeutral900Color,
        ),
        const SizedBox(
          height: 8,
        ),
        AppText(
          text:
              ' يمكنك الاستمتاع بجميع ميزات التطبيق\n والاستفادة من خدماتنا بسهولة وسرعة',
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Constants.kNeutral700Color,
        ),
      ],
    );
  }
}
