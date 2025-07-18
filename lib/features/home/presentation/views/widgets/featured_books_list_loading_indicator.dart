import 'package:flutter/material.dart';
import 'package:litloop/core/widgets/custom_fading_widget.dart';

import 'custom_book_image_loading_indicator.dart';

class FeaturedBooksListLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomBookImageLoadingIndicator();
          },
        ),
      ),
    );
  }
}
