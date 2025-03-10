import 'package:fn_by_fn/model/product_model.dart';

Map<int, ProductModel> productsData = {
  0: ProductModel(
    id: 0,
    imagePath: "assets/images/majesty.png",
    name: "Majesty",
    brandName: "EDP",
    discountedPrice: 120,
    originalPrice: 150,
    rating: 4.5,
    discountPercentage: 20,
    isAvailable: true,
    isTrending: true,
  ),
  1: ProductModel(
    id: 1,
    imagePath: "assets/images/bakhoor_set.png",
    name: "Bakhoor Set",
    brandName: "Musk",
    discountedPrice: 155,
    originalPrice: 140,
    rating: 5.0,
    discountPercentage: 8,
    isAvailable: true,
    isTrending: false,
  ),
  2: ProductModel(
    id: 2,
    imagePath: "assets/images/rose.png",
    name: "Rose",
    brandName: "Mamoul",
    discountedPrice: 130,
    originalPrice: 150,
    rating: 3.5,
    discountPercentage: 14,
    isAvailable: false,
    isTrending: true,
  ),
  3: ProductModel(
    id: 3,
    imagePath: "assets/images/mamoul.png",
    name: "Mamoul",
    brandName: "EDT",
    discountedPrice: 125,
    originalPrice: 145,
    rating: 4.0,
    discountPercentage: 16,
    isAvailable: true,
    isTrending: true,
  ),
  4: ProductModel(
    id: 4,
    imagePath: "assets/images/bakhoor.png",
    name: "Bakhoor",
    brandName: "Oud Burner",
    discountedPrice: 150,
    originalPrice: 155,
    rating: 4.0,
    discountPercentage: 9,
    isAvailable: false,
    isTrending: true,
  ),
};
