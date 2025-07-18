import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/styles.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_bloc_consumer.dart';
import 'newest_books_list_bloc_consumer.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int nextPage = 1;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        final maxScroll = scrollNotification.metrics.maxScrollExtent;
        final currentScroll = scrollNotification.metrics.pixels;

        if (scrollNotification is ScrollEndNotification) {
          if (currentScroll >= maxScroll * 0.7) {
            if (!isLoading) {
              isLoading = true;
              BlocProvider.of<NewestBooksCubit>(context)
                  .fetchNewestBooks(pageNumber: nextPage++)
                  .then((_) => isLoading = false);
            }
          }
        }
        return false;
      },
      child: CustomScrollView(
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
          NewestBooksListBlocBuilderSliver(),
        ],
      ),
    );
  }
}
