import 'package:flutter/material.dart';
import 'package:litloop/features/home/data/presentation/views/widgets/you_may_like_list.dart';

import '../../../../../../core/utils/styles.dart';

class YouMayLikeSection extends StatelessWidget {
  const YouMayLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text('You may also like', style: Styles.textStyle18),
        ),
        YouMayLikeList(),
      ],
    );
  }
}
