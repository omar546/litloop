import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const LitLoopApp());
}

class LitLoopApp extends StatelessWidget {
  const LitLoopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SplashView());
  }
}
