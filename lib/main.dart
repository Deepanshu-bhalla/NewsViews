import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:technewz/pages/home.dart';
import 'package:technewz/utils/colors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: AppColors.primary),
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/images/Views.png"),
        backgroundColor: Colors.white,
        splashIconSize: 350,
        duration: 2000,
        nextScreen: Home(),
      ),
    );
  }
}
