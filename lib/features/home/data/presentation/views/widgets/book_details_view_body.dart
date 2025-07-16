import 'package:flutter/material.dart';
import 'package:litloop/core/utils/styles.dart';
import 'package:litloop/features/home/data/presentation/views/widgets/rating.dart';

import 'custom_app_bar_details.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 10,
        children: [
          CustomAppBarDetailsView(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: CustomBookItem(showPlayButton: false),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Harry Potter and the Goblet of Fire',
              style: Styles.textStyle30,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            "J.K.Rowling",
            style: Styles.textStyle18.copyWith(color: Colors.grey,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Rating(),
        ],
      ),
    );
  }
}
