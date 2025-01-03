import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper_methods/validators.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Widget? prefix;
  final Widget? suffixIcon;
  final bool? obscureText;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final TextStyle? style;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final bool? filled;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autoValidateMode;
  final void Function(String?)? onSaved;
  const AppTextFormField(
      {super.key,
      this.controller,
      this.obscureText,
      this.hintText,
      this.hintStyle,
      this.labelText,
      this.labelStyle,
      this.prefixIcon,
      this.prefixIconColor,
      this.suffixIcon,
      this.keyboardType,
      this.onPressed,
      this.onChanged,
      this.onFieldSubmitted,
      this.border,
      this.enabledBorder,
      this.focusedBorder,
      this.validator,
      this.style,
      this.contentPadding,
      this.fillColor,
      this.filled,
      this.autofillHints,
      this.autoValidateMode,
      this.prefix,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Constants.kCursorBlueColor,
      autofillHints: autofillHints,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      onTap: onPressed,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      controller: controller,
      validator: validator ?? Validators.validateEmpty,
      onChanged: onChanged,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      style: style ?? TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        isDense: true,
        prefixIconConstraints: BoxConstraints(maxHeight: 24.h, maxWidth: 32.w),
        fillColor: fillColor ?? Colors.white,
        filled: filled ?? false,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
              vertical: 18.5.h,
            ),
        border: border,
        enabledBorder: enabledBorder ?? buildOutlineInputBorder(color: Constants.appColor),
        focusedBorder: focusedBorder ?? buildOutlineInputBorder(color: Constants.appColor),
        focusedErrorBorder: buildOutlineInputBorder(color: Constants.kError400Color),
        errorBorder: buildOutlineInputBorder(color: Constants.kError400Color),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.2.h,
              color: Constants.kNeutral600Color,
            ),
        labelText: labelText,
        labelStyle: labelStyle,
        prefixIcon: prefixIcon,
        prefix: prefix ?? const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
            ),
        suffixIcon: suffixIcon,
        errorStyle: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          height: 1.2.h,
          color: Constants.kError400Color,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.5.w),
      borderRadius: BorderRadius.circular(12.r),
    );
  }
}
