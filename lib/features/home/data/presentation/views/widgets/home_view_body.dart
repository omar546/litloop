import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const[
         CustomAppBar(),
         FeaturedBooksList(),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text('Best Seller',style:Styles.titleMedium,),
        )
      ],
    );
  }
}
