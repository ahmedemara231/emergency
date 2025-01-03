import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/base_widgets/text.dart';

class ClinicSpecs extends StatelessWidget {
  const ClinicSpecs({super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10.w),
        AppText(text: text, fontWeight: FontWeight.w500, fontSize: 12.sp,)
      ],
    );
  }
}
