import 'package:flutter/material.dart';

import 'custom_app_bar_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [CustomAppBarDetailsView()]));
  }
}
