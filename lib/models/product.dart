class Product {
  const Product({
    required this.title,
    required this.description,
    required this.price,
    required this.ratingRate,
    required this.ratingCount,
    this.imageUrl,
  });

  final String title;

  final String description;

  final num price;

  final num ratingRate;

  final num ratingCount;

  final String? imageUrl;
}
