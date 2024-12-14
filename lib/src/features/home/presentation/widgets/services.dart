import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/src/core/helpers/app_widgets/app_button.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/mediaQuery.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../generated/assets.dart';
import '../../../../core/helpers/base_widgets/text.dart';

class Services extends StatelessWidget {
  const Services({super.key,
    required this.onPressed,
    required this.service,
  });
  final VoidCallback onPressed;
  final String service;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlueAccent,
      elevation: 3,
      child: Padding(
        padding: context.allPadding(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: service,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                AppButton(text: 'احجز دلوقتى'.tr(), onPressed: onPressed,)
              ],
            ),
            SizedBox(
              width: 12.w,
            ),
            Flexible(
              child: SizedBox(
                width: context.setWidth(2.5),
                  child: Image.asset(Assets.imagesNursing)),
            ),
          ],
        ),
      ),
    );
  }
}