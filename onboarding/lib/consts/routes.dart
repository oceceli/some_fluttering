import 'package:flutter/cupertino.dart';
import 'package:onboarding/views/pages/onboard_page.dart';
import 'package:onboarding/views/pages/login_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const OnboardPages(),
  'login_page': (context) => const LoginPage(),
};
