import 'package:flutter/material.dart';
import 'package:hw_11/components/my_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1674676689855-cf7708af816b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1362&q=80',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.5),
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const MyText('بذور خضار', fontSize: 40),
          ),
        ],
      ),
    );
  }
}
