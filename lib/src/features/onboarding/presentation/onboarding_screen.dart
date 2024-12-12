import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/features/onboarding/data/data_source/models/onboarding_model.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_back_button.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_controller.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_dots_indicator.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_list.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_navigation.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController myController = GetIt.instance<OnboardingController>();
    List<OnboardingModel> onboardingList = getOnBoardingList();

    return Scaffold(
      backgroundColor: Constants.scaffoldBackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              AnimatedBuilder(
                animation: myController,
                builder: (context, _) {
                  return myController.currentPage != 0
                      ? Column(
                          children: [
                            SizedBox(
                              height: 22.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OnboardingBackButton(
                                  onTap: () {
                                    myController.back();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 77.h,
                            ),
                          ],
                        )
                      : SizedBox(
                          height: 139.h,
                        );
                },
              ),
              Expanded(
                child: OnboardingSlider(
                  controller: myController.pageController,
                  onPageChanged: (val) {
                    myController.changePage(val);
                  },
                  onboardingList: onboardingList,
                ),
              ),
              SizedBox(
                height: 95.h,
              ),
              OnboardingDotsIndicator(
                controller: myController.pageController,
                length: onboardingList.length,
              ),
              SizedBox(
                height: 125.h,
              ),
              SizedBox(
                width: 380.w,
                height: 58.h,
                child: const OnboardingNavigation(),
              ),
              SizedBox(
                height: 48.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
