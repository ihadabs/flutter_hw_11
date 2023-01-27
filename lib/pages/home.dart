import 'package:flutter/material.dart';
import 'package:hw_11/components/categories.dart';
import 'package:hw_11/components/features.dart';
import 'package:hw_11/components/horizontal_products.dart';
import 'package:hw_11/components/links.dart';
import 'package:hw_11/components/page_section.dart';
import 'package:hw_11/components/reviews.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f7f9),
      appBar: createAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: const [
          /// Low price products
          PageSection(title: 'اقل سعر', widget: HorizontalProducts()),

          /// Categories
          PageSection(widget: Categories()),

          /// Reviews
          PageSection(title: 'Customer Reviews', widget: Reviews()),

          /// Features
          PageSection(widget: Features()),

          /// Links
          PageSection(widget: Links(), bottomHeight: 200)
        ],
      ),
    );
  }
}
