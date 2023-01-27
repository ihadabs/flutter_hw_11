import 'package:flutter/material.dart';
import 'package:hw_11/components/review_card.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ReviewCard(),
          SizedBox(width: 16),
          ReviewCard(),
          SizedBox(width: 16),
          ReviewCard(),
        ],
      ),
    );
  }
}
