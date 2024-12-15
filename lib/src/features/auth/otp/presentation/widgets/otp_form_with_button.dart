import 'package:emergency/src/core/helpers/base_widgets/app_text_button.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/auth/otp/presentation/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OtpFormWithButton extends StatefulWidget {
  const OtpFormWithButton({super.key});

  @override
  State<OtpFormWithButton> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpFormWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _nextField({required String value, required int index}) {
    if (value.length == 1 && index < 5) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
  }

  void _verifyOtp() async {
    bool isValid = true;

    for (var controller in _controllers) {
      if (controller.text.length != 1) {
        isValid = false;
        break;
      }
    }

    //   if (isValid) {
    //     final otp = _controllers.map((c) => c.text).join();
    //     final email = await SharedPrefHelper.getEmail();
    //     final requestModel = VerifyOtpRequestModel(
    //       email: email,
    //       otp: otp,
    //     );
    //     BlocProvider.of<VerifyOtpCubit>(context).verifyOtp(requestModel);
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         backgroundColor: ColorsManager.oceanBlue,
    //         content: Text(
    //           'Please enter the complete OTP code',
    //           textAlign: TextAlign.center,
    //           style: TextStyles.font16WhiteSemiBold.copyWith(fontSize: 14),
    //         ),
    //       ),
    //     );
    //   }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: 'ادخل الرمز المرسل الى بريدك الالكترونى',
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: HexColor('#000000'),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              6,
              (index) {
                return OtpTextField(
                  index: index,
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  onChanged: (value) => _nextField(value: value, index: index),
                );
              },
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          AppTextButton(
            onTap: _verifyOtp,
            text: 'ارسال',
          ),
        ],
      ),
    );
  }
}
