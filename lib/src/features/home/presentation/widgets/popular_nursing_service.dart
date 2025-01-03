import 'package:emergency/src/core/helpers/base_widgets/divider.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularNursingService extends StatelessWidget {
  const PopularNursingService({super.key,
    required this.text,
    required this.img,
  });

  final String text;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(img),
            SizedBox(width: 16.w),
            AppText(text: text),
          ],
        ),
        SizedBox(height: 20.h),
        const AppDivider()
      ],
    );
  }
}
