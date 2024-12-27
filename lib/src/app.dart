import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/features/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/data_types/permession_process_model.dart';
import 'core/helpers/helper_methods/handle_permissions.dart';
import 'core/shared/observers/route_observer.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    AppPermission().check(
      PermissionProcessModel(
        permissionClient: PermissionClient.notification,
        onPermissionGranted: () {},
        onPermissionDenied: () {},
      ),
    );
    super.initState();
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        // shortcuts: ,
        // actions: ,
        locale: context.locale, // context.setLocal
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        title: 'App Name'.tr(), // give the translation of App Name for example
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        navigatorObservers: [AppNavigationObserver()],
        theme: ThemeData(
            scaffoldBackgroundColor: Constants.scaffoldBackGroundColor),
        //CacheHelper.getInstance().shared.getBool('appTheme') == false
        //     ? ThemeData.light()
        //     : ThemeData.dark(),
        home: const ProfileScreen(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
