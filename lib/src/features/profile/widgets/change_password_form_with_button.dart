import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text_field.dart';
import 'package:emergency/src/core/helpers/helper_methods/validators.dart';
import 'package:emergency/src/features/auth/reset_password/presentation/widgets/show_success_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ChangePasswordFormWithButton extends StatefulWidget {
  const ChangePasswordFormWithButton({
    super.key,
  });

  @override
  State<ChangePasswordFormWithButton> createState() =>
      _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ChangePasswordFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
    if (_formKey.currentState!.validate()) {
      final String currentPassword = _currentPasswordController.text;
      final String newPassword = _newPasswordController.text;
      final String confirmPassword = _confirmPasswordController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: _currentPasswordController,
            hintText: 'كلمة المرور الحالية',
            obscureText: _isPasswordHidden,
            validator: Validators.validatePassword,
            onSaved: (value) {},
          ),
          SizedBox(
            height: 24.h,
          ),
          AppTextFormField(
            controller: _newPasswordController,
            hintText: 'كلمة المرور الجديدة',
            obscureText: _isPasswordHidden,
            validator: Validators.validatePassword,
            onSaved: (value) {},
          ),
          SizedBox(
            height: 24.h,
          ),
          AppTextFormField(
            controller: _confirmPasswordController,
            hintText: 'تأكيد كلمة المرور',
            obscureText: _isConfirmPasswordHidden,
            validator: (value) => Validators.validatePasswordConfirm(
                value, _newPasswordController.text),
            onSaved: (value) {},
          ),
          SizedBox(
            height: 464.h,
          ),
          AppTextButton(
            // onTap: _submitForm,
            onTap: () {
              showSuccessDialog(context);
            },
            text: 'اعادة تعيين كلمة المرور',
          ),
        ],
      ),
    );
  }
}
