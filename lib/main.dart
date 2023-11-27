import 'package:flutter/material.dart';
import 'package:laundary_app/SplashScreens/splash0.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen0(),
    );
  }
}
