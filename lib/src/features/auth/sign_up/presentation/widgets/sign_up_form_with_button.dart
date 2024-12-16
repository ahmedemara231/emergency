import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:emergency/src/features/auth/sign_up/presentation/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpFormWithButton extends StatefulWidget {
  const SignUpFormWithButton({super.key});

  @override
  State<SignUpFormWithButton> createState() => _SignUpFormWithButtonState();
}

class _SignUpFormWithButtonState extends State<SignUpFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  bool _isTermsChecked = false;
  bool _isTermsValid = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    setState(() {
      _isTermsValid = _isTermsChecked;
    });

    if (_formKey.currentState!.validate() && _isTermsChecked) {
      final String name = _nameController.text;
      final String email = _emailController.text;
      final String password = _passwordController.text;
      final String confirmPassword = _confirmPasswordController.text;
      final String phoneNumber = _phoneNumberController.text;
      final String address = _addressController.text;

      // context.read<SignUpCubit>().emitSignupStates(
      //       name: name,
      //       email: email,
      //       password: password,
      //       confirmPassword: confirmPassword,
      //     );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpForm(
          formKey: _formKey,
          nameController: _nameController,
          emailController: _emailController,
          passwordController: _passwordController,
          confirmPasswordController: _confirmPasswordController,
          addressController: _addressController,
          phoneNumberController: _phoneNumberController,
        ),
        const SizedBox(
          height: 24,
        ),
        TermsAndCondition(
          onChanged: (bool isChecked) {
            setState(() {
              _isTermsChecked = isChecked;
            });
          },
        ),
        if (!_isTermsValid)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You must agree to the Terms & Conditions',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
          ),
        const SizedBox(
          height: 34,
        ),
        const AppTextButton(
          // onPressed: _submitForm,
          text: 'انشئ حساب',
        ),
      ],
    );
  }
}
