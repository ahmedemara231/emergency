import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OtpTextField extends StatefulWidget {
  final int index;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String value) onChanged;

  const OtpTextField({
    super.key,
    required this.index,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  bool _hasNumber = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_checkForNumber);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_checkForNumber);
    super.dispose();
  }

  void _checkForNumber() {
    final text = widget.controller.text;
    setState(() {
      _hasNumber = text.isNotEmpty && RegExp(r'\d').hasMatch(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      height: 51.h,
      decoration: BoxDecoration(
        color: Constants.kMain50Color,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: HexColor('#000000'),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15.h),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: Constants.appColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: Constants.appColor,
            ),
          ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
