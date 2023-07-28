import 'package:client/screens/agent_page.dart';
import 'package:client/screens/client_page.dart';
import 'package:client/screens/dashboard.dart';
import 'package:client/screens/news_page.dart';
import 'package:client/screens/side_bar.dart';
import 'package:client/screens/loginScreen.dart';
import 'package:client/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
