import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/core/helpers/base_widgets/text_field.dart';
import 'package:emergency/src/core/helpers/helper_methods/validators.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileFormWithButton extends StatefulWidget {
  const EditProfileFormWithButton({
    super.key,
  });

  @override
  State<EditProfileFormWithButton> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<EditProfileFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController =
      TextEditingController(text: 'منة ناصف');
  final TextEditingController _emailController =
      TextEditingController(text: 'mnassef31@gmail.com');
  final TextEditingController _mobileController =
      TextEditingController(text: '01552732738');
  final TextEditingController _addressController = TextEditingController(
      text: 'المنصورة, ص. الجامعة, شارع أحمد ماهر عمارة 22');

  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  void toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
    });
  }

  void _submitForm() {
    // if (_formKey.currentState!.validate()) {
    //   final  _nameController = _nameController.text;
    //   final String _emailController = _emailController.text;
    //   final String _mobileController = _mobileController.text;
    //         final String _addressController = _addressController.text;

    // }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(right: 24.w, left: 24.w, bottom: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: 'الاسم',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Constants.kNeutral900Color,
            ),
            const SizedBox(
              height: 8,
            ),
            AppTextFormField(
              controller: _nameController,
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.2.h,
                color: Constants.kNeutral600Color,
              ),
              validator: Validators.validateName,
              onSaved: (value) {},
            ),
            SizedBox(
              height: 16.h,
            ),
            AppText(
              text: 'البريد الالكترونى',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Constants.kNeutral900Color,
            ),
            const SizedBox(
              height: 8,
            ),
            AppTextFormField(
              controller: _emailController,
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.2.h,
                color: Constants.kNeutral600Color,
              ),
              validator: Validators.validateEmail,
              onSaved: (value) {},
            ),
            SizedBox(
              height: 16.h,
            ),
            AppText(
              text: 'الموبايل',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Constants.kNeutral900Color,
            ),
            const SizedBox(
              height: 8,
            ),
            AppTextFormField(
              controller: _mobileController,
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.2.h,
                color: Constants.kNeutral600Color,
              ),
              validator: Validators.validatePhone,
              onSaved: (value) {},
            ),
            SizedBox(
              height: 16.h,
            ),
            AppText(
              text: 'العنوان',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Constants.kNeutral900Color,
            ),
            const SizedBox(
              height: 8,
            ),
            AppTextFormField(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.iconsLocationIcon,
                  ),
                ),
              ),
              prefix: const Padding(
                padding: EdgeInsets.zero,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32.5.h, horizontal: 20.w),
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.2.h,
                color: Constants.kNeutral700Color,
              ),
              controller: _addressController,
              validator: Validators.validateEmpty,
              onSaved: (value) {},
            ),
            SizedBox(
              height: 275.h,
            ),
            AppTextButton(
              // onTap: _submitForm,
              onTap: () {
                ///////////////
              },
              text: 'حفظ التعديلات',
            ),
          ],
        ),
      ),
    );
  }
}
