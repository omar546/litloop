import 'package:flutter/material.dart';
import 'package:litloop/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:litloop/features/search/presentation/views/widgets/search_result_list.dart';

import '../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        spacing: 20,
        children: const [
          CustomSearchTextField(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Search Results', style: Styles.textStyle18),
            ),
          ),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}
