import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text_field.dart';
import 'package:emergency/src/core/helpers/helper_methods/validators.dart';
import 'package:emergency/src/features/auth/otp/presentation/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordFormWithButton extends StatefulWidget {
  const ForgetPasswordFormWithButton({super.key});

  @override
  State<ForgetPasswordFormWithButton> createState() =>
      _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: _emailController,
            hintText: 'البريد الالكترونى',
            validator: Validators.validateEmail,
            onSaved: (value) {},
          ),
          SizedBox(
            height: 32.h,
          ),
          AppTextButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                final String email = _emailController.text;
                context.normalNewRoute(const OtpScreen());
              }
            },
            text: 'التالى',
          ),
        ],
      ),
    );
  }
}
