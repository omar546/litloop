import 'package:flutter/material.dart';
import 'package:litloop/features/splash/presentation/views/widgets/featured_item.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FeaturedItem();
        },
      ),
    );
  }
}
