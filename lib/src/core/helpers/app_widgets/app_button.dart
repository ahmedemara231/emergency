import 'package:emergency/main.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Constants.appColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r)
        )
      ),
      child: AppText(text: text, color: Colors.white),
    );
  }
}
