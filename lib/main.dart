import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title', // You can specify a title here
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // Customize your dark theme here
        primaryColor: Colors.black, // Set your primary color
        scaffoldBackgroundColor:
            Colors.black, // Background color of the scaffold
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, // App bar background color
          foregroundColor: Colors.white, // App bar text and icon color
        ),
        // You can add more theme customizations here if needed
      ),
      home: const HomeScreen(),
    );
  }
}
