// import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/src/app.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/data_source/local/secure.dart';
import 'package:emergency/src/core/data_source/local/shared.dart';
// import 'package:emergency/src/core/helpers/app_widgets/error_handling.dart/unexpected_error_handler.dart';
import 'package:emergency/src/core/shared/observers/bloc_observer.dart';
import 'package:emergency/src/core/shared/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().setUpBlocs();
  ServiceLocator().setupServiceLocator();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.getInstance().cacheInit();
  SecureStorage.getInstance().init();
  Constants.configLoading();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Flutter errors
  // FlutterError.onError = (errorDetails) {
  //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  //   FlutterError.dumpErrorToConsole(errorDetails);
  //   runApp(UnexpectedErrorHandler(errorDetails: errorDetails));
  // };

  // asynchronous errors
  // PlatformDispatcher.instance.onError = (error, stack) {
  // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  // return true;
  // };
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
        path: 'assets/translation',
        fallbackLocale: const Locale('en', 'US'),
        child: const App()),
  );
}
