import 'package:flutter/material.dart';
import 'package:kaarigar/views/app_screens/main_screen.dart';
import 'package:kaarigar/views/auth/forgot_password_screen.dart';
import 'package:kaarigar/views/auth/log_in_screen.dart';
import 'package:kaarigar/views/auth/service_category_screen.dart';
import 'package:kaarigar/views/auth/sign_up_screen.dart';
import 'package:kaarigar/views/onBoarding/notification_screen1.dart';
import 'package:kaarigar/views/onBoarding/notification_screen2.dart';
import 'package:kaarigar/views/onBoarding/selection_screen.dart';
import 'package:kaarigar/views/splash/splash_screen.dart';

class AppRoute {
  static const String splash = '/';
  static const String notification = '/notification1';
  static const String location = '/location';
  static const String selection = '/selection';
  static const String signup = '/signup';
  static const String signIn = '/signIn';
  static const String category = '/category';
  static const String forgotPassword = '/forgotPassword';
  static const String main = '/main';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case notification:
        return MaterialPageRoute(builder: (_) => const NotificationScreen1());
      case location:
        return MaterialPageRoute(builder: (_) => const NotificationScreen2());
      case selection:
        return MaterialPageRoute(builder: (_) => const SelectionScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case category:
        return MaterialPageRoute(builder: (_) => const ServiceCategoryScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const LogInScreen());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      default:
        return errorRouter();
    }
  }
}

Route<dynamic> errorRouter() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Center(
        child: Text("Route not found", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.black,
    ),
  );
}
