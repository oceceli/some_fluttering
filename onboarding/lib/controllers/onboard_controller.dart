import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/models/onboard_model.dart';

class OnboardController extends GetxController {
  var pageController = PageController();

  var selectedPage = 0.obs;
  bool get isLastPage => selectedPage.value == pages.length - 1;

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutQuart);
  }

  List<OnboardModel> pages = [
    OnboardModel('assets/order.png', 'Sipariş ver!',
        'Sadece bir kaç tık ile sipariş ver.'),
    OnboardModel('assets/deliver.png', 'Siparişin yola çıksın!',
        'Yemeğin sana en yakın teslimat şubemizden yola çıksın.'),
    OnboardModel('assets/cook.png', 'Yemeğin geldi!', 'Afiyet olsun!'),
  ];
}
