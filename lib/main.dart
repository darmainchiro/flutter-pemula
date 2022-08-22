import 'package:flutter/material.dart';
import 'package:flutter_pemula/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pemula',
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}
