import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/home/screens/home_screen.dart';
import 'package:food_delivery_app/view/splash/splas_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}
