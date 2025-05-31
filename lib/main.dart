import 'package:flutter/material.dart';
import 'features/auth/screens/login_screen.dart';

void main() {
  runApp(const FocuslyApp());
}

class FocuslyApp extends StatelessWidget {
  const FocuslyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Focusly',
      theme: ThemeData.dark(), // We'll use dark theme with custom colors
      home: const LoginScreen(),
    );
  }
}
