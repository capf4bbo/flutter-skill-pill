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
  factory Product.fromMap(Map<String, dynamic> decoded) => Product(
        title: decoded["title"],
        description: decoded["description"],
        price: decoded["price"],
        ratingRate: decoded["rating"]["rate"],
        ratingCount: decoded["rating"]["count"],
        imageUrl: decoded["image"].toString().replaceAll("https", "http"),
      );
}
