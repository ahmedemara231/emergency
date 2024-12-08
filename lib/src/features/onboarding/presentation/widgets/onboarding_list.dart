import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/features/onboarding/data/data_source/models/onboarding_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<OnboardingModel> getOnBoardingList() {
  return [
    OnboardingModel(
        title: 'خدمات تمريضية منزلية',
        imagePath: Assets.imagesOnboarding1,
        imageHeight: 273.h,
        imageWeight: 293.21.w,
        body:
            'احصل على الرعاية الطبية في راحة منزلك\nمن خلال فريق تمريض محترف وجاهز\nلتلبية احتياجاتك'),
    OnboardingModel(
        title: 'حجز موعد في العيادة',
        imagePath: Assets.imagesOnboarding2,
        imageHeight: 271.13.h,
        imageWeight: 290.w,
        body:
            'يمكنك حجز موعد في العيادة بكل سهولة\nفقط اختر الوقت المناسب لك وسيقوم\nفريق العيادة بتأكيد الموعد'),
    OnboardingModel(
        title: 'اختر وسيلة الدفع التي تناسبك',
        imagePath: Assets.imagesOnboarding3,
        imageHeight: 273.56.h,
        imageWeight: 271.w,
        body:
            'استمتع بتجربة دفع سهلة وآمنة عن\nطريق فيزا, فودافون كاش او فورى'),
  ];
}
