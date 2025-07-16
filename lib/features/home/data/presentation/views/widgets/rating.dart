import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';

class Rating extends StatelessWidget {
  final MainAxisAlignment mainAlignment;
  const Rating({super.key,this.mainAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 6.3,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const Text('4.8', style: Styles.textStyle16),
        Text('(245)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
