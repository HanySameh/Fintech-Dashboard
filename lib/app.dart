import 'package:flutter/material.dart';

import 'home.dart';
import 'styles/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
        scrollbarTheme: Styles.scrollbarTheme,
      ),
      home: const HomeScreen(),
    );
  }
}
