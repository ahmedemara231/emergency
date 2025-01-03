import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutUsText extends StatelessWidget {
  const AboutUsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.w, left: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // about us text
          AppText(
            text:
                'مرحبًا بك في تطبيقنا الرائد الذي يهدف إلى تسهيل الوصول إلى الخدمات الطبية بكل سهولة وراحة! نقدم لك منصة متكاملة لحجز خدمات التمريض المنزلي وعيادات الأطباء بكل سهولة ومن مكانك، مما يضمن توفير الوقت والجهد لك ولعائلتك.',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Constants.kNeutral800Color,
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 24.h,
          ),
          // why choosing us text
          AppText(
            text: 'لماذا تختارنا؟',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Constants.kNeutral800Color,
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'سهولة الوصول:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor('#000000'),
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
                TextSpan(
                  text:
                      ' يمكنك اختيار الخدمات الطبية التي تحتاجها بناءً على موقعك الجغرافي، مما يتيح لك العثور على أقرب مزود للخدمة بسهولة.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Constants.kNeutral700Color,
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'خدمات متنوعة:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor('#000000'),
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
                TextSpan(
                  text:
                      ' نوفر خدمات التمريض المنزلي لمختلف الحالات، بالإضافة إلى إمكانية حجز مواعيد في العيادات المتخصصة.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Constants.kNeutral700Color,
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'دفع مرن:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor('#000000'),
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
                TextSpan(
                  text:
                      ' يمكنك اختيار طريقة الدفع المناسبة لك، سواء نقدًا أو إلكترونيًا، لضمان تجربة سلسة ومريحة.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Constants.kNeutral700Color,
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'اختيار الموعد المناسب:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor('#000000'),
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
                TextSpan(
                  text:
                      ' نوفر لك حرية اختيار الموعد الذي يناسب جدولك بكل سهولة، حتى تتمكن من حجز خدمات التمريض أو مواعيد العيادات في الأوقات التي تلائمك.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Constants.kNeutral700Color,
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'خدمات موثوقة وآمنة:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor('#000000'),
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
                TextSpan(
                  text:
                      ' نعمل مع فريق من المهنيين الطبيين المعتمدين لضمان حصولك على خدمات طبية عالية الجودة.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Constants.kNeutral700Color,
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'إشعارات ذكية:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor('#000000'),
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
                TextSpan(
                  text:
                      ' نحافظ على راحتك بإرسال تذكيرات وتنبيهات بمواعيد الحجز ومتابعة الخدمات الطبية المطلوبة.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Constants.kNeutral700Color,
                    fontFamily: 'Tajawal',
                    height: 1.2.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
