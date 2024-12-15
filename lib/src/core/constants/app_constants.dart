import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hexcolor/hexcolor.dart';

class Constants {
  // regExp
  static String emailRegExp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.["
      r"a-zA-Z]+";
  static String phoneRegExp =
      r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]' r'{4,6}$)';

  static var appColor = HexColor('##7EAD7B');
  static var scaffoldBackGroundColor = HexColor('#FCFDFF');
  static var kPrimaryBGColor = HexColor('#FCFDFF');
  static var kPrimaryMainColor = HexColor("#0070CD");
  static var kMain50Color = HexColor("#F0F5EF");
  static var kPrimary50Color = HexColor("#E5F4FF");
  static var kPrimary200Color = HexColor("#99D1FF");
  static var kError400Color = HexColor("#E84A4A");
  static var kNeutral100Color = HexColor("#E6E6E6");
  static var kNeutral400Color = HexColor("#999999");
  static var kNeutral300Color = HexColor("#B3B3B3");
  static var kNeutral500Color = HexColor("#FFFFFF");
  static var kNeutral600Color = HexColor("#666666");
  static var kNeutral700Color = HexColor("#4D4D4D");
  static var kNeutral900Color = HexColor("#1A1A1A");
  static var kCursorBlueColor = HexColor("#041461");

  static String tajawalFontFamily = "Tajawal";

  static List<String> userRoles = [
    'مستخدم',
    'عيادة',
    'ممرض',
  ];

  //date time
  // static String dataTime = Jiffy().yMMMd;

  // other
  static void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false
      ..maskType = EasyLoadingMaskType.black;
  }
}
