import 'package:flutter/material.dart';
import 'package:hw_11/components/my_text.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Placeholder(fallbackWidth: 50, fallbackHeight: 50),
          MyText('شحن سريع', fontSize: 30),
          MyText('Their delivery service is soo good.', fontSize: 20),
        ],
      ),
    );
  }
}
