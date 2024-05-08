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
  final double price;
  final double ratingRate;
  final num ratingCount;
  final String? imageUrl;
}
