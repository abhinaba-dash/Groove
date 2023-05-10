import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groove/constants/theme.dart';
import 'package:groove/screens/log_in_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groove',
      theme: AppTheme.darkTheme,
      home: const LogInPage(),
    );
  }
}
