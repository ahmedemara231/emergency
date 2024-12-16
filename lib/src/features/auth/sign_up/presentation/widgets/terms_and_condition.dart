import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndCondition extends StatefulWidget {
  final Function(bool) onChanged;

  const TermsAndCondition({super.key, required this.onChanged});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Constants.appColor,
          checkColor: Colors.white,
          side: BorderSide(
            color: Constants.appColor,
          ),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? false;
            });
            widget.onChanged(_isChecked);
          },
        ),
        // const SizedBox(
        //   width: 8,
        // ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'بالنقر هنا فانك توافق على ',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Constants.kNeutral600Color,
                  fontFamily: 'Tajawal',
                  height: 1.2.h,
                ),
              ),
              TextSpan(
                text: 'شروط الخدمة الخاصة بنا\n',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Constants.appColor,
                  fontFamily: 'Tajawal',
                  height: 1.2.h,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
              TextSpan(
                text: 'وانك قد قرات ',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Constants.kNeutral600Color,
                  fontFamily: 'Tajawal',
                  height: 1.2.h,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
              TextSpan(
                text: 'شروط السياسة الخاصة بنا',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Constants.appColor,
                  fontFamily: 'Tajawal',
                  height: 1.2.h,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
