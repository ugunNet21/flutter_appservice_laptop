import 'package:flutter/material.dart';
import 'package:flutter_dicodingone/ui/pages/account_page.dart';
import 'package:flutter_dicodingone/ui/pages/home_tab_page.dart';
import 'package:flutter_dicodingone/ui/pages/login_page.dart';
import 'package:flutter_dicodingone/ui/pages/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomeTabPage(),
        '/login-page': (context) => const LoginPage(),
        '/account-page': (context) => const AccountPage(),
      },
    );
  }
}
