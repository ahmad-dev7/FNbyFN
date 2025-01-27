class ProductModel {
  final String imagePath, name, brandName;
  final double discountedPrice, originalPrice, rating;
  final int discountPercentage, id;
  final bool isAvailable, isTrending;

  ProductModel({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.brandName,
    required this.discountedPrice,
    required this.originalPrice,
    required this.rating,
    required this.discountPercentage,
    required this.isAvailable,
    required this.isTrending,
  });
}
