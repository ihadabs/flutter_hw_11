import 'package:flutter/material.dart';
import 'package:hw_11/components/feature_card.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FeatureCard(),
        SizedBox(height: 16),
        FeatureCard(),
        SizedBox(height: 16),
        FeatureCard(),
      ],
    );
  }
}
