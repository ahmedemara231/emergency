import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text_field.dart';
import 'package:emergency/src/core/helpers/helper_methods/validators.dart';
import 'package:emergency/src/features/auth/reset_password/presentation/widgets/show_success_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ResetPasswordFormWithButton extends StatefulWidget {
  final String email;
  final String otp;

  const ResetPasswordFormWithButton(
      {super.key, required this.email, required this.otp});

  @override
  State<ResetPasswordFormWithButton> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
      final String newPassword = _newPasswordController.text;
      final String confirmPassword = _confirmPasswordController.text;
      final String email = widget.email;
      final String otp = widget.otp;

      //   final requestModel = ResetPasswordRequestModel(
      //     email: email,
      //     otp: otp,
      //     password: newPassword,
      //     confirmPassword: confirmPassword,
      //   );
      //   context.read<ResetPasswordCubit>().resetPassword(requestModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
    //   listener: (context, state) {
    //     if (state is ResetPasswordSuccess) {
    //       showSuccessDialog(context);
    //     } else if (state is ResetPasswordError) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(content: Text('Failed to reset password: ${state.error}')),
    //       );
    //     }
    //   },
    //   builder: (context, state) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: _newPasswordController,
            hintText: 'كلمة المرور الجديدة',
            obscureText: _isPasswordHidden,
            validator: Validators.validatePassword,
            onSaved: (value) {},
          ),
          SizedBox(
            height: 16.h,
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
            height: 32.h,
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
  // );
}
// }
