import 'package:engage_infinity_box/model/basicProductData.dart';
import 'package:engage_infinity_box/widgets/widget_product_grid_item.dart';
import 'package:flutter/material.dart';

class ProductGridWidget extends StatelessWidget {

  const ProductGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 2.5 / 3,
      ),
      children: basicProductData
          .map((productData) => ProductGridItemWidget(
      productItemId: productData.productId.toString(),
      productItemTitle: productData.productTitle,
      productItemImageURL: productData.productImageURL,
    ))
          .toList(),
    );
  }
}
