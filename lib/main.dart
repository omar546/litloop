import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LitLoopApp());
}

class LitLoopApp extends StatelessWidget {
  const LitLoopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      home: SplashView(),
    );
  }
}
