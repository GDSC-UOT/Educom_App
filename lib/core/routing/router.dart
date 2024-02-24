import 'package:ed_community/core/routing/routes.dart';
import 'package:ed_community/features/exam_dates/ui/exam_dates.dart';
import 'package:ed_community/features/home/ui/home.dart';
import 'package:ed_community/features/login/ui/login.dart';
import 'package:ed_community/features/messages/ui/screens/messages.dart';
import 'package:ed_community/features/notifications/ui/notifications.dart';
import 'package:ed_community/features/profile/ui/profile.dart';
import 'package:ed_community/features/signup/ui/signup.dart';
import 'package:ed_community/features/tasks/ui/tasks.dart';
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
      case Routes.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case Routes.messages:
        return MaterialPageRoute(builder: (_) => const MessagesScreen());
      case Routes.examsDate:
        return MaterialPageRoute(builder: (_) => const ExamDatesScreen());
      case Routes.tasks:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
