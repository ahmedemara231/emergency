import 'package:emergency/src/features/onboarding/data/data_source/models/onboarding_model.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnboardingSlider extends StatelessWidget {
  const OnboardingSlider(
      {super.key,
      required this.onboardingList,
      required this.onPageChanged,
      required this.controller});
  final PageController controller;
  final List<OnboardingModel> onboardingList;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      controller: controller,
      itemCount: onboardingList.length,
      itemBuilder: (context, i) {
        return OnboardingContent(onboardingList[i]);
      },
    );
  }
}
