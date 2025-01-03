import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/core/helpers/base_widgets/text_field.dart';
import 'package:emergency/src/core/helpers/helper_methods/validators.dart';
import 'package:emergency/src/features/auth/forget_password/presentation/forget_passsword_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: widget.emailController,
            hintText: 'البريد الالكترونى',
            validator: Validators.validateEmail,
            // (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'ادخل البريد الالكترونى';
            //   } else {
            //     return 'البريد الالكترونى غير صالح';
            //   }
            // },
          ),
          SizedBox(
            height: 16.h,
          ),
          AppTextFormField(
            controller: widget.passwordController,
            hintText: 'كلمة المرور',
            validator: Validators.validatePassword,
            //(value) {
            //   if (value == null || value.isEmpty) {
            //     return 'ادخل كلمة المرور';
            //   } else {
            //     return 'كلمة المرور خاطئه';
            //   }
            // },
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => context.normalNewRoute(const ForgetPassswordScreen()),
              child: AppText(
                text: 'نسيت كلمة المرور',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: HexColor('#7EAD7B'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
