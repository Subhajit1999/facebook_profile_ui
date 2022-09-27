import 'package:facebook_profile_ui/screens/profile/ui/profile.dart';
import 'package:facebook_profile_ui/screens/splash/ui/splash_page.dart';
import 'package:facebook_profile_ui/shared/error_widget.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var arg = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        return MaterialPageRoute(builder: (_) => CustomErrorWidget());
    }
  }
}