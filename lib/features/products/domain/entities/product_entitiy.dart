import 'package:equatable/equatable.dart';

class ProductEntitiy extends Equatable {
  final int productId;
  final String productTitle;
  final String productDesc;
  final String productCategory;
  final num productPrice;
  final num productDiscountPercentage;
  final num productRating;
  final String productBrand;
  final List<String>? productImages;
  final String productThumbnail;

  const ProductEntitiy({
    required this.productId,
    required this.productTitle,
    required this.productDesc,
    required this.productCategory,
    required this.productPrice,
    required this.productDiscountPercentage,
    required this.productRating,
    required this.productBrand,
    required this.productImages,
    required this.productThumbnail,
  });

  @override
  List<Object?> get props => [
        productId,
        productTitle,
        productDesc,
        productCategory,
        productPrice,
        productDiscountPercentage,
        productRating,
        productBrand,
        productImages,
        productThumbnail,
      ];
}
