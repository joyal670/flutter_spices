import 'package:flutter/material.dart';
import 'package:spices/presentation/register/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spices',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          useMaterial3: false,
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(),
    );
  }
}
