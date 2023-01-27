import 'package:flutter/material.dart';
import 'package:hw_11/components/my_text.dart';
import 'package:hw_11/main.dart';
import 'package:hw_11/models/product.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          for (final product in AppData.cart)
            CartProductCard(
              product: product,
              onDelete: () {
                // setState(() {});
              },
            ),
        ],
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.product,
    required this.onDelete,
  });

  final Product product;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: MyText(product.name, fontSize: 26, maxLines: 2)),
                InkWell(
                  onTap: () {
                    AppData.cart.remove(product);
                    onDelete();
                  },
                  child: const Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText('Price', fontSize: 20),
                MyText('${product.price} SAR', fontSize: 20),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText('Quantity', fontSize: 20),
                Row(
                  children: const [
                    InkWell(child: Icon(Icons.add)),
                    SizedBox(width: 12),
                    MyText('1', fontSize: 20),
                    SizedBox(width: 12),
                    InkWell(child: Icon(Icons.remove)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MyText('Total', fontSize: 20),
                MyText('27 SAR', fontSize: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
