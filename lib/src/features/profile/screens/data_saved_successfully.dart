import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DataSavedSuccessfully extends StatelessWidget {
  const DataSavedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
              ),
              SizedBox(
                child: SvgPicture.asset(
                  Assets.imagesSuccessImage,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              AppText(
                text: 'تم حفظ البينات بنجاح',
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
                color: Constants.kNeutral900Color,
              ),
              SizedBox(
                height: 415.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const AppTextButton(
                  text: 'تخطى',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
