import 'package:flutter/material.dart';
import 'package:litloop/core/utils/app_router.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LitLoopApp());
}

class LitLoopApp extends StatelessWidget {
  const LitLoopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
