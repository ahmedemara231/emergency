import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../generated/assets.dart';
import '../../../../core/helpers/base_widgets/text_field.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({super.key});

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: searchController,
      prefixIcon: Image.asset(Assets.iconsSearchIcon),
      hintText: 'ابحث عن خدمة التم...'.tr(),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40.r)
      ),
      filled: true,
      fillColor: Colors.white,
    );
  }
}
