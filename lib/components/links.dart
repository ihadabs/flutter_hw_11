import 'package:flutter/material.dart';
import 'package:hw_11/components/my_text.dart';

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MyText('Important Links', fontSize: 40),
        SizedBox(height: 16),
        MyText('Important Links', fontSize: 20),
        SizedBox(height: 16),
        MyText('Important Links', fontSize: 20),
        SizedBox(height: 16),
        MyText('Important Links', fontSize: 20),
        SizedBox(height: 16),
        MyText('Important Links', fontSize: 20),
      ],
    );
  }
}
