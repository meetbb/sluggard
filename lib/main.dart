import 'package:flutter/material.dart';
import 'package:sluggard/ui/dashboard/dashboard.dart';
import 'package:sluggard/ui/login/login.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sluggard',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const Dashboard(),
    );
  }
}
