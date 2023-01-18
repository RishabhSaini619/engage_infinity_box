// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:flutter/material.dart';
import '../model/model_product.dart';
import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
  List<ProductModel> _items = [];

  ProductProvider(
    this._items,
  );

  List<ProductModel> get items {
    return [..._items];
  }

  Future<void> fetchAllProducts() async {
    final dataUrl = Uri.parse('https://fakestoreapi.com/products');
    try {
      final response = await http.get(dataUrl);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<ProductModel> extractedProductList = [];
      extractedData.forEach((
        extractedProductID,
        extractedProductData,
      ) {
        extractedProductList.add(
          ProductModel(
            productId: extractedProductID as double,
            productTitle: extractedProductData['Product Title'],
            productDescription: extractedProductData['Product Description'],
            productCategories: extractedProductData['Product Price'].toDouble(),
            productPrice: extractedProductData['Product Price'].toDouble(),
            productImageURL: extractedProductData['Product ImageURL'],
          ),
        );
      });

      _items = extractedProductList;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<void> fetchTop5Products() async {
    final dataUrl = Uri.parse('https://fakestoreapi.com/products?limit=5');
    try {
      final response = await http.get(dataUrl);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<ProductModel> extractedProductList = [];
      extractedData.forEach((
          extractedProductID,
          extractedProductData,
          ) {
        extractedProductList.add(
          ProductModel(
            productId: extractedProductID as double,
            productTitle: extractedProductData['Product Title'],
            productDescription: extractedProductData['Product Description'],
            productCategories: extractedProductData['Product Price'].toDouble(),
            productPrice: extractedProductData['Product Price'].toDouble(),
            productImageURL: extractedProductData['Product ImageURL'],
          ),
        );
      });

      _items = extractedProductList;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }


}
