import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/mediaQuery.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/padding.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyService extends StatelessWidget {
  const EmergencyService({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      child: Row(
        children: [
          Padding(
            padding: context.allPadding(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  child: AppText(
                   text: 'لو بتواجه حالة طبية طارئة وتحتاج رعاية عاجلة احجز تمريض منزلي عاجل أو موعد طارئ في عيادة الان.'.tr(),
                   maxLines: 10,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: AppText(
                      text: 'طلب خدمة طارئة'.tr(),
                      color: Constants.appColor,
                    )
                )
              ],
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          SizedBox(
              width: context.setWidth(2.5),
              child: Image.asset(Assets.imagesPana)),


        ],
      ),
    );
  }
}
