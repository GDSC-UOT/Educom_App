import 'package:ed_community/core/routing/routes.dart';
import 'package:ed_community/features/home/ui/home.dart';
import 'package:ed_community/features/login/ui/login.dart';
import 'package:ed_community/features/profile/ui/profile.dart';
import 'package:ed_community/features/signup/ui/signup.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}