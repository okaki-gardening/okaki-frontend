import 'package:appwrite_auth_kit/appwrite_auth_kit.dart';
import 'package:flutter/material.dart';

import 'package:okaki/screens/main_screen.dart';
import 'package:okaki/screens/login_screen.dart';
import 'package:okaki/screens/loading_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authNotifier = context.authNotifier;

    Widget widget;
    switch (authNotifier.status) {
      case AuthStatus.authenticated:
        widget = const MainScreen();
        break;
      case AuthStatus.unauthenticated:
      case AuthStatus.authenticating:
        widget = const LoginScreen();
        break;
      case AuthStatus.uninitialized:
      default:
        widget = const LoadingScreen();
        break;
    }
    return widget;
  }
}
