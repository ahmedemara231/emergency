import 'package:emergency/src/core/helpers/base_widgets/text_field.dart';
import 'package:emergency/src/core/helpers/helper_methods/validators.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController addressController;
  final TextEditingController phoneNumberController;

  const SignUpForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.addressController,
    required this.phoneNumberController,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: widget.nameController,
            hintText: 'الاسم باللغه العربية',
            validator: Validators.validateName,
            onSaved: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFormField(
            controller: widget.emailController,
            hintText: 'البريد الالكترونى',
            validator: Validators.validateEmail,
            onSaved: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFormField(
            controller: widget.phoneNumberController,
            hintText: 'رقم الموبايل',
            validator: Validators.validatePhone,
            onSaved: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFormField(
            controller: widget.addressController,
            hintText: 'العنوان',
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFormField(
            controller: widget.passwordController,
            hintText: 'كلمة المرور',
            obscureText: _isPasswordHidden,
            validator: Validators.validatePassword,
            onSaved: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFormField(
            controller: widget.confirmPasswordController,
            hintText: 'تأكيد كلمة المرور',
            obscureText: _isConfirmPasswordHidden,
            validator: (value) => Validators.validatePasswordConfirm(
                value, widget.passwordController.text),
            onSaved: (value) {},
          ),
        ],
      ),
    );
  }
}
