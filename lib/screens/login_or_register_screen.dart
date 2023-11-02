import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/login_screen.dart';
import 'package:flutter_auth/screens/register_screen.dart';

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  State<LoginOrRegisterScreen> createState() => _LoginOrRegisterScreenState();
}

class _LoginOrRegisterScreenState extends State<LoginOrRegisterScreen> {
  // 처음에는 로그인 페이지를 보여줌
  bool showLoginScreen = true;

  // toggle login and register pages
  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(onTap: toggleScreens);
    } else {
      return RegisterScreen(
        onTap: toggleScreens,
      );
    }
  }
}
