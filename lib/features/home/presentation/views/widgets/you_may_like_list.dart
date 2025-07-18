import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_router.dart';
import 'custom_book_item.dart';

class YouMayLikeList extends StatelessWidget {
  const YouMayLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kDetailsView);
            },
            child: CustomBookItem(imageUrl:"",showPlayButton: false),
          );
        },
      ),
    );
  }
}
