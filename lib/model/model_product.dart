import 'package:flutter/material.dart';

class ProductModel{
   double productId;
   String productTitle;
   String productDescription;
   List<String> productCategories;
   double productPrice;
   String productImageURL;

  ProductModel( {
    required this.productId,
    required this.productTitle,
    required this.productDescription,
    required this.productCategories,
    required this.productPrice,
    required this.productImageURL,
  });
}
