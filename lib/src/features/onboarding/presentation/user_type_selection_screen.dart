import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/constants/app_sizes.dart';
import 'package:emergency/src/core/helpers/app_widgets/custom_button.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/routes.dart';
import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:emergency/src/features/auth/login_screen.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/user_type_selection_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class UserTypeSelectionScreen extends StatefulWidget {
  const UserTypeSelectionScreen({super.key});

  @override
  State<UserTypeSelectionScreen> createState() => _UserTypeSelectionState();
}

class _UserTypeSelectionState extends State<UserTypeSelectionScreen> {
  String selectedRole = 'مستخدم';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.scaffoldBackGroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppPadding.pH40, horizontal: AppPadding.pH24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppText(
                text: ': تسجيل الدخول للابلكيشن ك',
                fontWeight: FontWeight.w500,
                fontSize: 22.sp,
                color: HexColor('#000000'),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.only(top: AppPadding.pH16),
                      child: UserTypeSelectionTile(
                        role: Constants.userRoles[i],
                        title: Constants.userRoles[i],
                        selectedRole: selectedRole,
                        onChanged: (value) {
                          setState(() {
                            selectedRole = value!;
                          });
                        },
                      ),
                    );
                  },
                  itemCount: Constants.userRoles.length,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: 'التالى',
                  onTap: () {
                    context.removeOldRoute(const LoginScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
