import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_controller.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_next_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController myController = GetIt.instance<OnboardingController>();

    return AnimatedBuilder(
      animation: myController,
      builder: (context, _) {
        return myController.currentPage < myController.onboardingList.length - 1
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnboardingNextButton(
                    fillColor: HexColor('#0071CD'),
                    onTap: () {
                      if (myController.currentPage <
                          myController.onboardingList.length - 1) {
                        myController.next();
                      } else {
                        // context.go(AppRouter.kLoginView);
                      }
                    },
                    progress: (myController.currentPage + 1) /
                        myController.onboardingList.length,
                  ),
                  TextButton(
                    onPressed: () {
                      // context.go(AppRouter.kLoginView);
                    },
                    child: Text(
                      'تخطى',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: HexColor('#333333'),
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OnboardingNextButton(
                    fillColor: HexColor('#0071CD'),
                    onTap: () {
                      if (myController.currentPage <
                          myController.onboardingList.length - 1) {
                        myController.next();
                      } else {
                        //
                      }
                    },
                    progress: (myController.currentPage + 1) /
                        myController.onboardingList.length,
                  ),
                ],
              );
      },
    );
  }
}
