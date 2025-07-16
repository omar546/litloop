import 'package:flutter/material.dart';

import 'custom_app_bar_details.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 30,
        children: [
          CustomAppBarDetailsView(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: CustomBookItem(showPlayButton: false),
          ),
        ],
      ),
    );
  }
}
