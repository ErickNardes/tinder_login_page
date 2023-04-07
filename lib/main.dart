import 'package:flutter/material.dart';
import 'package:tinder_login_page/app/features/auth/submodules/login_page/presenter/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LogiinPage(),
      title: 'Login Tinder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
