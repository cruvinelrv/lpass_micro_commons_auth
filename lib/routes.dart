import 'package:flutter/material.dart';
import 'package:nomady_auth/app/presentation/login_page/login_page.dart';
import 'package:nomady_auth/app/presentation/register_page/register_page.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
    }
  }
}
