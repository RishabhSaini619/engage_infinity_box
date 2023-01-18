import 'package:flutter/material.dart';

class ProductGridItemWidget extends StatelessWidget {
  final String productItemId;
  final String productItemTitle;
  final String productItemImageURL;

  const ProductGridItemWidget({
    super.key,
    required this.productItemId,
    required this.productItemTitle,
    required this.productItemImageURL,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(seconds: 5),
        curve: Curves.elasticOut,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: GridTile(
            header: Text(productItemId),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              title: Text(
                productItemTitle,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Hero(
                tag: productItemId,
                child: Image.network(productItemImageURL,fit: BoxFit.contain,),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
