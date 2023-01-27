import 'package:flutter/material.dart';
import 'package:hw_11/components/my_text.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Colors.orange,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Placeholder(fallbackHeight: 40, fallbackWidth: 40),
              SizedBox(width: 16),
              MyText('Husam', fontSize: 20),
            ],
          ),
          const SizedBox(height: 16),
          const MyText('Producst are good and can be eaten by a spoon.', fontSize: 20),
          const SizedBox(height: 32),
          const Placeholder(fallbackHeight: 20),
        ],
      ),
    );
  }
}
