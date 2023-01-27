import 'package:flutter/material.dart';
import 'package:hw_11/constants.dart';
import 'package:hw_11/models/product.dart';

import 'my_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: Color(0xeeeeee80),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image
          Image.network(
            product.imageUrl,
            height: 220,
            width: 200,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              /// Name
              Container(
                constraints: const BoxConstraints(minHeight: 160),
                padding: const EdgeInsets.all(12),
                child: MyText(
                  product.name,
                  fontSize: 18,
                  color: myGreen,
                ),
              ),

              /// Price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: MyText('${product.price} SAR', fontSize: 18),
                  ),

                  /// Add to cart button
                  InkWell(
                    onTap: () {
                      AppData.cart.add(product);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: myGreen,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
                      ),
                      child: const Icon(Icons.shopping_bag_outlined),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),
            ],
          ),
        ],
      ),
    );
  }
}
