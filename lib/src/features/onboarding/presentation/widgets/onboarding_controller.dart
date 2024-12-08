import 'package:emergency/src/features/onboarding/data/data_source/models/onboarding_model.dart';
import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_list.dart';
import 'package:flutter/material.dart';

class OnboardingController extends ChangeNotifier {
  List<OnboardingModel> onboardingList = getOnBoardingList();

  int currentPage = 0;
  late PageController pageController;

  OnboardingController() {
    pageController = PageController();
  }

  void changePage(int index) {
    currentPage = index;
    notifyListeners();
  }

  void next() {
    if (currentPage < 2) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
      notifyListeners();
    }
  }

  void back() {
    if (currentPage > 0) {
      currentPage--;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
      notifyListeners();
    }
  }

  void moveTo(int index) {
    currentPage = index;
    pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
