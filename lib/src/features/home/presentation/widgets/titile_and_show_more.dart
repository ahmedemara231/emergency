import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/helpers/base_widgets/text.dart';

class TitleAndShowMore extends StatelessWidget {
  const TitleAndShowMore({super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
          text: title,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap, child: AppText(
          text: 'عرض المزيد'.tr(),
          color: Constants.appColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),)
      ],
    );
  }
}
