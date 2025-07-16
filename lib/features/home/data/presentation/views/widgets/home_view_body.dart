import 'package:flutter/material.dart';
import '../../../../../splash/presentation/views/widgets/custom_app_bar.dart';
import '../../../../../splash/presentation/views/widgets/featured_books_list.dart';
import '../../../../../splash/presentation/views/widgets/featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksList(),
      ],
    );
  }
}
