import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_bloc_builder.dart';
import 'newest_books_list_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedBooksLitViewBlocBuilder(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(child: NewestBooksListBlocBuilder()),
      ],
    );
  }
}
