class Product {
  final String name;
  final double price;
  final String imageUrl;

  static const name1 = 'hadi';

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class AppData {
  static const List<Product> products = [
    Product(
      name:
          'طارد السحالي "الوزغ" طبيعي من زيوت عشبية -   Herbal Strategi Just Out Herbal Lizard Repellentطارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
      price: 27,
      imageUrl:
          'https://jothor-store.com/cdn-cgi/mirage/df8e431386cda5d5eb8e8e0fd44d39c477f08137130c5275e5a8c02a8dc34bae/1280/https://cdn.salla.sa/Aedxd/b3hTFtpS0z8gpopInh1YDxifGRAmy66kcuVbDxfS.jpg',
    ),
    Product(
      name: 'حرنكش - توماتيلو - Tomatillo Seeds - Ground Cherryحرنكش - توماتيلو - Tomatillo Seeds - Ground Cherry',
      price: 13,
      imageUrl:
          'https://jothor-store.com/cdn-cgi/mirage/df8e431386cda5d5eb8e8e0fd44d39c477f08137130c5275e5a8c02a8dc34bae/1280/https://cdn.salla.sa/Aedxd/W8xjSRAOgEL209QIu7dYGO6ac8dvEDBdDNcXhSwR.jpg',
    ),
    Product(
      name: 'فاصوليا سيلين - Celine Bush Bean فاصوليا سيلين - Celine Bush Bean',
      price: 10,
      imageUrl:
          'https://jothor-store.com/cdn-cgi/mirage/df8e431386cda5d5eb8e8e0fd44d39c477f08137130c5275e5a8c02a8dc34bae/1280/https://cdn.salla.sa/Aedxd/j7aX2gRLl3ZJnQaHhk3sksTSj8ZZUZywD1ehpDKK.jpg',
    ),
  ];

  static List<Product> cart = [];
}
