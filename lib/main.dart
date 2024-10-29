import 'package:flutter/material.dart';
import 'package:learningdart/pages/home_page.dart';
import 'package:learningdart/pages/main_page.dart';
import 'package:learningdart/pages/profile_page.dart';
import 'package:learningdart/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => const HomePage(),
        '/MainPage': (BuildContext context) => const MainPage(),
        '/SettingsPage': (BuildContext context) => const SettingsPage(),
        '/ProfilePage': (BuildContext context) => const ProfilePage(),
      },
      home: const MainPage(),
    );
  }
}
