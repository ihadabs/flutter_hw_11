import 'package:flutter/material.dart';
import 'package:hw_11/components/product_card.dart';
import 'package:hw_11/models/product.dart';

class HorizontalProducts extends StatelessWidget {
  const HorizontalProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final product in AppData.products)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ProductCard(product: product),
            ),
        ],
      ),
    );
  }
}
