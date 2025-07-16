import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const LitLoopApp());
}

class LitLoopApp extends StatelessWidget {
  const LitLoopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
    );
  }
}
