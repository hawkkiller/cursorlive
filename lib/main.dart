import 'package:flutter/material.dart';
import 'screens/authentication_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication Demo',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const AuthenticationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
