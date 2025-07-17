import 'package:flutter/material.dart';
import 'package:litloop/features/home/presentation/views/widgets/you_may_like_section.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              spacing: 10,
              children: [
                BookDetailsSection(),
                const Spacer(),
                YouMayLikeSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
