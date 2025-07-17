import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:litloop/core/utils/app_router.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/domain/entities/book_entity.dart';

void main() async {
  runApp(const LitLoopApp());

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
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
