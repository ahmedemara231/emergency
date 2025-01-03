import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/app_widgets/app_button.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/padding.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/home/presentation/widgets/clinic_specs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicModel extends StatelessWidget {
  const ClinicModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalSymmetricPadding(5.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: Constants.secondAppColor,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: context.verticalSymmetricPadding(10.h),
                child: Row(
                  children: [
                    Padding(
                      padding: context.horizontalSymmetricPadding(12.w),
                      child: CircleAvatar(
                        radius: 35.sp,
                        backgroundImage: const NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuNw1fDzeYGH2BFi4ufuCv2EORvqxoEMDdoA&s'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(text: 'مركز المهدي', fontSize: 16.sp, fontWeight: FontWeight.w500,),
                        AppText(
                          text: 'دكتور احمد على',
                          color: Constants.appColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                         // TODO: Rating
                      ],
                    ),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.grey)),
                  ],
                ),
              ),
              ClinicSpecs(icon: Icons.earbuds, text: 'سعر الكشف : 250 جنيه'.tr()),
              ClinicSpecs(icon: Icons.location_on_outlined, text: 'المنصورة: شارع احمد ماهر'.tr()),
              ClinicSpecs(icon: Icons.money, text: 'سعر الكشف'.tr()),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AppButton(
                      color: Colors.grey[300],
                      textColor: Colors.black,
                      text: 'المواعيد'.tr(),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(child: AppButton(text: 'احجز الان'.tr(), onPressed: () {},)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
