import 'package:flutter/material.dart';
import 'package:hw_11/components/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CategoryCard(),
        SizedBox(height: 16),
        CategoryCard(),
        SizedBox(height: 16),
        CategoryCard(),
      ],
    );
  }
}
